# Wiki Schema

This file defines how the wiki works. Every agent, skill, or session that reads from or writes to the wiki follows these conventions.

---

## Architecture

```
raw/    → Immutable source material. Never modified after saving.
wiki/   → LLM-maintained knowledge. The LLM owns this layer entirely.
```

The LLM reads from `raw/`, writes to `wiki/`. You (the human) curate sources into `raw/` and browse the wiki. The wiki compounds over time — every ingest and every good query makes it richer.

## Directory Conventions

**raw/** — Flat or lightly organized. Filename convention: `YYYY-MM-DD-slug.md` (e.g., `2026-04-07-cashvertising-ch1.md`). Subdirectories optional as volume grows (courses/, reddit/, swipes/, articles/, performance/).

**wiki/** — Starts flat. Subcategories added as natural groupings emerge. The `index.md` is the primary navigation, not the folder structure. Don't over-organize.

## Page Format

Every wiki page uses this header:

```markdown
# Page Title

> Sources: [[raw/source-file.md]], [[raw/another-source.md]]
> Related: [[page-name]], [[another-page]]
> Last updated: YYYY-MM-DD

[Content below — free-form markdown. Structure varies by page type.]
```

**Rules:**
- `[[wikilinks]]` for all cross-references. Use the filename without extension, without path prefix (e.g., `[[persuasion]]` not `[[wiki/persuasion.md]]`).
- Sources line references the raw files this page was derived from.
- Related line links to other wiki pages with meaningful connections.
- Last updated is the date of the most recent edit.
- No YAML frontmatter. No confidence scores.
- Content structure is free-form. The LLM picks the right format for each page. Some pages are principles, some are entity profiles, some are comparisons, some are procedural frameworks.

## Key Files

### index.md
Master catalog. One line per page, organized by category:

```markdown
## Category Name
- [[page-name]] — One-sentence summary
- [[another-page]] — One-sentence summary
```

The LLM reads `index.md` first to find relevant pages for any operation. Updated after every ingest or wiki change.

### log.md
Chronological, append-only record of operations. Newest date at top.

```markdown
## YYYY-MM-DD
- [INGEST] Processed "Source Title" → created [[new-page]], updated [[existing-page]]
- [QUERY] "Question text" → answered from [[page-1]], [[page-2]]
- [LINT] Health check → N issues found, M fixed
- [UPDATE] Updated [[page-name]] — reason
```

Prefixes: `[INGEST]`, `[QUERY]`, `[LINT]`, `[UPDATE]`, `[CREATE]`, `[DELETE]`.

### hot.md
Hot cache (~500 words max). The most recent important context — what was just ingested, what changed, what matters right now. Updated after significant operations. Useful when other projects or agents need quick context without crawling the full wiki.

## Operations

### Ingest
Process a new source into the wiki.

1. Save source material to `raw/` (immutable after this point)
2. Read and analyze — skim for big ideas, deep-dive on core sections, then integrate
3. Read `index.md` to find existing related pages
4. Read those related pages to understand what already exists
5. Create new wiki pages or update existing ones — add `[[wikilinks]]` for connections
6. Update `index.md` with new/changed entries
7. Add reciprocal `[[wikilinks]]` on pages that were linked to
8. Append to `log.md`
9. Update `hot.md` if the ingest was significant
10. Report to the user

**Principles:** Consolidate, don't accumulate. If three sources confirm the same thing, that's one well-sourced page, not three pages. Chains, not lists — principles should form causal chains (A→B→C), not bullet-point collections.

### Query
Answer questions using the wiki.

1. Read `index.md` to identify relevant pages
2. Read 2-5 relevant pages, follow `[[wikilinks]]` if needed
3. Synthesize an answer grounded in wiki content, cite which pages informed it
4. If the answer represents novel synthesis, offer to file it as a new wiki page
5. Append to `log.md`

### Lint
Health-check the wiki.

1. Read all wiki pages
2. Check for: orphan pages (not in index), broken `[[wikilinks]]`, missing reciprocal links, stale pages (90+ days), thin stubs, missing Sources lines, duplicate coverage
3. Report findings organized by severity
4. Fix on user approval
5. Append to `log.md`

## Rules

- **Never modify `raw/`** — sources are immutable after saving.
- **Always update `index.md`** after creating or significantly changing a wiki page.
- **Always append to `log.md`** after any operation.
- **Don't over-organize** — flat is fine until it isn't. Add subcategories when a clear grouping has 5+ pages.
- **Don't duplicate** — before creating a new page, check if an existing page covers the same territory.
- **Wikilinks are mandatory** — every page should link to related pages, and those pages should link back.
