"""
PDF/DOCX to Raw converter for the wiki ingest pipeline.

Takes a PDF or DOCX from anywhere on your computer, extracts the text,
and saves it to raw/ as markdown files ready for /ingest.

- Small files (under 25K words): saves as one .md file
- Large files: splits by chapters/headings or by word count
- Handles scanned PDFs via OCR automatically

Usage:
    python pdf_to_raw.py "C:\\path\\to\\your\\book.pdf"
    python pdf_to_raw.py "C:\\path\\to\\your\\doc.docx"
    python pdf_to_raw.py "C:\\path\\to\\your\\book.pdf" --chunk-size 20000
"""

import sys
import re
import os
from pathlib import Path
from datetime import date

try:
    import fitz  # PyMuPDF
except ImportError:
    print("ERROR: PyMuPDF not installed. Run: pip install pymupdf")
    sys.exit(1)

try:
    import docx as python_docx
except ImportError:
    python_docx = None

RAW_DIR = Path(__file__).parent / "raw"
WORD_LIMIT = 25000  # files under this many words stay as one file
DEFAULT_CHUNK_SIZE = 15000  # words per chunk when splitting

# Set Tesseract path for OCR
os.environ.setdefault('TESSDATA_PREFIX', 'C:/Program Files/Tesseract-OCR/tessdata')


def extract_text_pdf(pdf_path: str) -> str:
    doc = fitz.open(pdf_path)
    total_pages = len(doc)

    # First try normal text extraction
    pages = []
    for page in doc:
        pages.append(page.get_text())
    text = "\n\n".join(pages)

    # If we got barely any text, try OCR
    if len(text.split()) < 100 and total_pages > 0:
        print(f"No text found — trying OCR on {total_pages} pages (this takes a while)...")
        pages = []
        for i, page in enumerate(doc):
            if (i + 1) % 25 == 0 or i == 0:
                print(f"  OCR page {i + 1}/{total_pages}...")
            try:
                tp = page.get_textpage_ocr(dpi=200, full=True, language='eng')
                pages.append(page.get_text('text', textpage=tp))
            except Exception:
                pages.append("")
        text = "\n\n".join(pages)

    doc.close()
    return text


def extract_text_docx(docx_path: str) -> str:
    if python_docx is None:
        print("ERROR: python-docx not installed. Run: pip install python-docx")
        sys.exit(1)
    doc = python_docx.Document(docx_path)
    paragraphs = [p.text for p in doc.paragraphs if p.text.strip()]
    return "\n\n".join(paragraphs)


def extract_text_csv(csv_path: str) -> str:
    import csv
    rows = []
    with open(csv_path, 'r', encoding='utf-8', errors='replace') as f:
        reader = csv.reader(f)
        headers = next(reader, None)
        if headers:
            rows.append(" | ".join(headers))
            rows.append(" | ".join(["---"] * len(headers)))
        for row in reader:
            rows.append(" | ".join(row))
    return "\n".join(rows)


def extract_text(file_path: str) -> str:
    ext = Path(file_path).suffix.lower()
    if ext == ".docx":
        return extract_text_docx(file_path)
    elif ext == ".csv":
        return extract_text_csv(file_path)
    else:
        return extract_text_pdf(file_path)


def make_slug(filename: str) -> str:
    name = Path(filename).stem.lower()
    name = re.sub(r'[^a-z0-9]+', '-', name)
    name = name.strip('-')
    return name


def split_by_headings(text: str, chunk_size: int) -> list[tuple[str, str]]:
    """Try to split by chapter/section headings first."""
    # Look for common chapter patterns
    patterns = [
        r'\n(Chapter\s+\d+[^\n]*)',
        r'\n(CHAPTER\s+\d+[^\n]*)',
        r'\n(Part\s+\d+[^\n]*)',
        r'\n(PART\s+\d+[^\n]*)',
        r'\n(Section\s+\d+[^\n]*)',
    ]

    for pattern in patterns:
        splits = re.split(pattern, text)
        if len(splits) > 3:  # found real chapters
            chunks = []
            # splits alternates: [pre-chapter, heading, content, heading, content, ...]
            # First chunk is everything before the first heading
            if splits[0].strip():
                chunks.append(("intro", splits[0].strip()))
            for i in range(1, len(splits) - 1, 2):
                heading = splits[i].strip()
                content = splits[i + 1].strip() if i + 1 < len(splits) else ""
                chunk_text = heading + "\n\n" + content
                chunks.append((heading, chunk_text))
            return chunks

    return []


def split_by_words(text: str, chunk_size: int) -> list[tuple[str, str]]:
    """Fall back to splitting by word count."""
    words = text.split()
    chunks = []
    for i in range(0, len(words), chunk_size):
        chunk_words = words[i:i + chunk_size]
        chunk_num = (i // chunk_size) + 1
        chunks.append((f"part-{chunk_num}", " ".join(chunk_words)))
    return chunks


def save_chunks(chunks: list[tuple[str, str]], slug: str, today: str):
    """Save chunks to raw/ directory."""
    RAW_DIR.mkdir(exist_ok=True)
    saved = []
    for i, (label, text) in enumerate(chunks, 1):
        if len(chunks) == 1:
            filename = f"{today}-{slug}.md"
        else:
            clean_label = re.sub(r'[^a-z0-9]+', '-', label.lower()).strip('-')[:40]
            filename = f"{today}-{slug}-{i:02d}-{clean_label}.md"

        filepath = RAW_DIR / filename
        filepath.write_text(text, encoding="utf-8")
        saved.append(filepath)

    return saved


def main():
    if len(sys.argv) < 2:
        print("Usage: python pdf_to_raw.py <path-to-pdf> [--chunk-size N]")
        sys.exit(1)

    pdf_path = sys.argv[1]
    chunk_size = DEFAULT_CHUNK_SIZE

    if "--chunk-size" in sys.argv:
        idx = sys.argv.index("--chunk-size")
        chunk_size = int(sys.argv[idx + 1])

    if not os.path.exists(pdf_path):
        print(f"ERROR: File not found: {pdf_path}")
        sys.exit(1)

    print(f"Reading: {pdf_path}")
    text = extract_text(pdf_path)
    word_count = len(text.split())
    print(f"Extracted: {word_count:,} words")

    slug = make_slug(pdf_path)
    today = date.today().isoformat()

    if word_count <= WORD_LIMIT:
        # Small file — save as one
        chunks = [(slug, text)]
        print(f"Small file ({word_count:,} words) — saving as one file")
    else:
        # Try heading-based split first
        chunks = split_by_headings(text, chunk_size)
        if chunks:
            print(f"Large file — split into {len(chunks)} chunks by headings")
        else:
            # Fall back to word-count split
            chunks = split_by_words(text, chunk_size)
            print(f"Large file — split into {len(chunks)} chunks by word count ({chunk_size:,} words each)")

    saved = save_chunks(chunks, slug, today)

    print(f"\nSaved to raw/:")
    for f in saved:
        wc = len(f.read_text(encoding="utf-8").split())
        print(f"  {f.name} ({wc:,} words)")

    print(f"\nReady for /ingest. Run:")
    for f in saved:
        print(f"  /ingest raw/{f.name}")


if __name__ == "__main__":
    main()
