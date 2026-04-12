"""
Batch PDF processor. Point it at a folder and it converts every PDF to raw/ chunks.

Usage:
    python batch_pdf.py "C:\\Users\\Aurelio\\Downloads\\books"
    python batch_pdf.py    (defaults to raw/incoming/)

Workflow:
    1. Download all your PDFs into one folder
    2. Run this script pointing at that folder
    3. Tell Claude: "ingest everything new in raw/"
"""

import sys
import os
import subprocess
from pathlib import Path

# Fix encoding for Windows terminal output
if sys.platform == "win32":
    import io
    sys.stdout = io.TextIOWrapper(sys.stdout.buffer, encoding='utf-8')

SCRIPT_DIR = Path(__file__).parent
RAW_DIR = SCRIPT_DIR / "raw"
PDF_SCRIPT = SCRIPT_DIR / "pdf_to_raw.py"
PROCESSED_LOG = RAW_DIR / ".processed_pdfs"


def get_processed():
    """Read list of already-processed PDF paths."""
    if PROCESSED_LOG.exists():
        return set(PROCESSED_LOG.read_text(encoding="utf-8").strip().splitlines())
    return set()


def mark_processed(pdf_path: str):
    """Add a PDF to the processed list."""
    with open(PROCESSED_LOG, "a", encoding="utf-8") as f:
        f.write(pdf_path + "\n")


def main():
    # Default to raw/incoming/ if no folder specified
    if len(sys.argv) > 1:
        folder = Path(sys.argv[1])
    else:
        folder = RAW_DIR / "incoming"
        folder.mkdir(parents=True, exist_ok=True)

    if not folder.exists():
        print(f"ERROR: Folder not found: {folder}")
        sys.exit(1)

    # Find all PDFs, DOCX, and CSV files
    pdfs = sorted(folder.glob("*.pdf")) + sorted(folder.glob("*.docx")) + sorted(folder.glob("*.csv"))
    if not pdfs:
        print(f"No PDFs, DOCX, or CSV files found in {folder}")
        sys.exit(0)

    processed = get_processed()
    to_process = [p for p in pdfs if str(p) not in processed]

    if not to_process:
        print(f"All {len(pdfs)} PDFs already processed. Nothing to do.")
        sys.exit(0)

    print(f"Found {len(to_process)} new PDFs to process ({len(processed)} already done)\n")

    results = []
    for i, pdf in enumerate(to_process, 1):
        print(f"{'='*60}")
        print(f"[{i}/{len(to_process)}] {pdf.name}")
        print(f"{'='*60}")

        try:
            result = subprocess.run(
                [sys.executable, str(PDF_SCRIPT), str(pdf)],
                capture_output=False,
                timeout=1200  # 20 min max per PDF
            )
            if result.returncode == 0:
                mark_processed(str(pdf))
                results.append((pdf.name, "OK"))
            else:
                results.append((pdf.name, "FAILED"))
        except subprocess.TimeoutExpired:
            results.append((pdf.name, "TIMEOUT"))
            print(f"  TIMEOUT after 20 minutes — skipping")
        except Exception as e:
            results.append((pdf.name, f"ERROR: {e}"))

        print()

    # Summary
    print(f"\n{'='*60}")
    print(f"BATCH COMPLETE")
    print(f"{'='*60}")
    for name, status in results:
        print(f"  [{status}] {name}")

    ok_count = sum(1 for _, s in results if s == "OK")
    print(f"\n{ok_count}/{len(results)} processed successfully.")
    print(f"\nAll chunks saved to raw/. Tell Claude:")
    print(f'  "ingest everything new in raw/"')


if __name__ == "__main__":
    main()
