---
name: lint
description: >
  Health-check the wiki. Finds orphan pages, broken links, stale content, missing cross-references,
  contradictions, and gaps. Reports findings and fixes on approval.
  Run periodically to keep the wiki healthy as it grows.
---

# Lint Skill

Runs a health check on the wiki. Finds structural issues, content gaps, and maintenance needs. Keeps the wiki healthy as it grows.

## How to Run

Just say `/lint` or "lint the wiki" or "health-check the wiki."

## The Checks

### 1. Orphan Pages
Pages that exist in `wiki/` but are not listed in `wiki/index.md`.

**Fix:** Add them to the index with a proper summary, or delete if they're stubs/accidents.

### 2. Broken Wikilinks
`[[wikilinks]]` that point to pages that don't exist.

**Fix:** Create the missing page, fix the link to point to the right page, or remove the link.

### 3. Missing Reciprocal Links
Page A links to Page B, but Page B doesn't link back to Page A (when the connection is meaningful both ways).

**Fix:** Add the reciprocal link to Page B's Related line or in-text.

### 4. Stale Pages
Pages whose Last updated date is more than 90 days old, or pages with no Last updated date.

**Fix:** Review the page. Update if content is still accurate. Refresh the date. If outdated, update or flag for the user.

### 5. Thin Pages
Pages with very little content — likely stubs that were created but never fleshed out.

**Fix:** Either expand with existing knowledge from other pages/sources, or merge into a related page.

### 6. Missing Sources
Pages without a Sources line, or with empty sources.

**Fix:** Add source attribution if known, or flag as "source unknown."

### 7. Duplicate Coverage
Two or more pages covering substantially the same territory.

**Fix:** Merge into one page. Redirect the other (or delete if the content was fully absorbed).

### 8. Index Accuracy
Index entries whose one-line summaries no longer match the page content (because the page evolved).

**Fix:** Update the summary in the index.

### 9. Content Gaps
Important concepts mentioned across multiple pages but lacking their own dedicated page.

**Fix:** Suggest new pages to create. Don't create them without user approval.

## Output Format

```
## Wiki Lint Report — YYYY-MM-DD

### Critical (fix now)
- [BROKEN LINK] [[nonexistent-page]] referenced in [[story-craft]] line 42
- [ORPHAN] wiki/untitled-draft.md not in index

### Warning (should fix)
- [STALE] [[positioning]] last updated 2026-01-15 (82 days ago)
- [THIN] [[avatar-3]] has only 4 lines of content
- [NO RECIPROCAL] [[persuasion]] links to [[story-craft]] but not vice versa

### Info (nice to have)
- [GAP] "belief architecture" mentioned in 3 pages but has no dedicated page
- [DUPLICATE] [[copy-structure]] and [[direct-response-copywriting]] overlap significantly

### Stats
- Total pages: N
- Total wikilinks: N
- Orphan pages: N
- Broken links: N
- Average page age: N days
```

## After the Report

1. Present findings to the user
2. Propose fixes for Critical and Warning items
3. Fix on user approval
4. Append to `wiki/log.md`: `- [LINT] Health check → N issues found, M fixed`

## When to Run

- After a batch of ingests
- Weekly if actively adding sources
- Monthly during slower periods
- Anytime the wiki feels disorganized or you suspect drift
