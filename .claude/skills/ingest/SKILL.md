---
name: ingest
description: >
  Process new source material into the wiki. Reads the source, extracts key knowledge,
  creates or updates wiki pages with cross-references, updates the index and log.
  Use when you have new material to add: course content, articles, ads, Reddit threads, performance data.
---

# Ingest Skill

Turns raw source material into structured, interlinked wiki knowledge. One source can touch many wiki pages.

## Accepted Input Types

| Type | Examples | How to handle |
|------|----------|--------------|
| **Course Material** | PDF, transcript, notes | Extract frameworks + principles |
| **Native Ads (Winners)** | Real ads that perform well | Analyze WHY they work |
| **Native Ads (Losers)** | Ads that failed | Analyze WHY they failed |
| **Performance Data** | ROAS, CTR, batch results | Extract patterns |
| **Framework/SOP** | Marketing methodology docs | Distill into actionable rules |
| **Swipe File** | Competitor ads, reference materials | Analyze structure + techniques |
| **Articles/Posts** | Blog posts, Reddit threads, video transcripts | Extract principles |

## The Pipeline

### Step 0: PRE-FLIGHT — Check If Already Ingested

**This step is mandatory. Never skip it.**

Before doing ANY reading or analysis, check whether this source has already been ingested:

1. **Check `wiki/log.md`** for the raw filename. Search for the exact filename (e.g., `raw/2026-04-07-cashvertising-ch1.md`). The log records every file that has been processed.
2. **If the filename appears in the log:**
   - Read the log entry to see what was done (created/updated pages, or "already covered")
   - **STOP. Report to the user:** "Already ingested in session [X]. [Pages created/updated]. Skipping."
   - Do NOT re-read the source file. Do NOT re-read wiki pages. This is the whole point.
3. **If the filename does NOT appear in the log:** proceed to Step 1.

**For batch ingests** (multiple files at once):
- Run this check on ALL files first, before reading any of them
- Report the split: "X of Y files already ingested. Processing Z new files."
- Only proceed with the genuinely new files

This step exists because re-checking already-ingested files against the wiki burns massive tokens for zero value. The log is the source of truth.

### Step 1: SAVE TO RAW

Save the source material to `raw/` as an immutable original. Never modify it after this point.

Filename convention: `YYYY-MM-DD-slug.md` (e.g., `2026-04-07-cashvertising-ch1.md`).

If the user pastes text directly, save it to `raw/` with a descriptive filename.
If the user provides a file path, copy it to `raw/`.
If the source is already in `raw/`, skip this step.

### Step 2: READ AND ANALYZE

Three phases, always in order. Never skip the skim.

#### Phase 1: SKIM — Build a Concept Map

Read the entire material quickly. NOT extracting yet. Just understanding.

- What are the 3-5 big ideas?
- How do they connect? What builds on what?
- What's the argument chain? (A leads to B leads to C, not isolated points)
- Which sections are core (new ideas) vs. filler (repetition, examples)?

Write it as a concept map:
```
Core idea: [1 sentence]
  → leads to: [Principle A]
    → requires: [Principle B]
      → proved by: [Principle C]
Core sections: [X, Y, Z]
Filler: [A, B]
```

#### Phase 2: DEEP DIVE — Extract from Core Sections

Go deep into the core sections only.

For each core section:
- Make a complete inventory (everything in it)
- Select what's operationally valuable vs. background
- Keep max 1-2 strong examples per principle
- For skipped items: note what and why

Bias check after each section: "What does this say that doesn't fit my existing understanding?"

#### Phase 3: INTEGRATE — Organize for the Wiki

Take extracted principles and determine how they map to wiki pages:
- Which existing pages need updating?
- Which new pages need creating?
- What connections exist between pages?

### Step 3: CHECK THE WIKI

Read `wiki/index.md`. For each big idea from your extraction:
- Does a wiki page already cover this topic?
- Which pages are related?

Read the related wiki pages. Understand what already exists before creating anything new.

### Step 4: CREATE OR UPDATE WIKI PAGES

For each extracted idea:

**If a wiki page exists and covers this territory:**
- Update it with new principles, frameworks, or examples
- Update the Sources line with the new raw source
- Update the Related line if new connections emerged
- Update the Last updated date
- Add `[[wikilinks]]` to other pages where connections exist

**If no wiki page covers this:**
- Create a new page in `wiki/`
- Use the wiki page format (see wiki/SCHEMA.md)
- Add Sources, Related, and Last updated
- Add `[[wikilinks]]` throughout

**Consolidate, don't accumulate.** If three sources confirm the same thing, that's one well-sourced page, not three pages.

**Chains, not lists.** Principles should form causal chains (A leads to B because...), not loose bullet collections.

**Max 3-5 major principles per source.** Quality over quantity. If you extracted more, some aren't big enough to be principles.

**Every framework needs 3+ concrete steps.** Actions, not intentions. "Add more reason-why" is not a step. "Find the main claim, check if reason-why is within 2 sentences, write it in reader language" is.

### Step 5: UPDATE THE INDEX

Add entries to `wiki/index.md` for any new pages. Verify existing entries still have accurate summaries if their pages were updated significantly.

Format: `- [[page-name]] — One-sentence summary`

### Step 6: UPDATE CROSS-REFERENCES

For pages that were linked TO by your new/updated pages: read those pages and add reciprocal `[[wikilinks]]` if they don't already exist.

### Step 7: LOG AND REPORT

Append to `wiki/log.md`:
```
- [INGEST] Processed "Source Title" → created [[new-page]], updated [[existing-page-1]], [[existing-page-2]]
```

Update `wiki/hot.md` if the ingest was significant (new topic area, major update to existing knowledge).

Report to the user:
- Source processed
- Pages created and updated
- Key connections found
- Anything surprising or contradictory

## Critical Rules

1. **Pre-flight first, always.** Check `wiki/log.md` before reading ANYTHING. If the file is already logged, stop immediately. This single rule prevents the biggest token waste.
2. **Three phases, always.** Skim → Deep dive → Integrate. Never skip the skim.
3. **Consolidate, don't accumulate.** One well-sourced page beats three thin ones.
4. **Chains, not lists.** Build concept maps. Loose bullets are incoherent.
5. **Max 3-5 principles per source.** Not every observation is a principle.
6. **Every framework needs 3+ action steps.** Not intentions, not vague advice.
7. **Raw is immutable.** Never modify files in `raw/` after saving.
8. **Always update index.** If you created or significantly changed a page, the index must reflect it.
9. **Always log.** Every ingest gets a log entry.
10. **Wikilinks everywhere.** Every page should link to related pages. Those pages should link back.
11. **Winners over theory.** A principle from a real winning ad is worth more than a course framework.
12. **Inventory before extraction.** List all sections first. Don't cherry-pick — the best insights are often buried deep.
13. **Big documents in blocks.** 30+ pages: read section by section. Don't skim headers and assume.

## When to Use This Skill

Use when:
- You have a course, PDF, or article to process
- You find a winning/losing ad to analyze
- You discover a framework or technique
- You have performance data to learn from
- You encounter Reddit threads or competitor content worth keeping

Don't use when:
- Just reading casually (no extraction needed)
- Material is trivial or one-off
- The wiki already covers this topic thoroughly and the new material adds nothing
