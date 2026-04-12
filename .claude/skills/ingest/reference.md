# Ingest Skill — Reference Material

Read this file during execution for templates, format specs, and conventions.

## Wiki Page Format

```markdown
# Page Title

> Sources: [[raw/source-file.md]], [[raw/another-source.md]]
> Related: [[page-name]], [[another-page]]
> Last updated: YYYY-MM-DD

## Core Thesis
[The ONE idea. 1-2 sentences.]

## Principles
### [Principle 1]
[The rule. 1-2 sentences.]
Why it matters: [reasoning]

## Frameworks
### [Framework Name]
Derived from: [which principle]
Step 1: [concrete action]
Step 2: [concrete action]
Step 3: [concrete action]
When to use: [situation]

## Proven Examples
### "[Exact quote from real copy]"
Source: [where] | Result: [performance if known]
What it shows: [principle + framework]
Pattern: [reusable structure]

## Nuances and Exceptions
### [When principle X breaks]
Situation: [what's different]
Why the rule doesn't apply: [reason]
What to do instead: [alternative]
```

This is a TEMPLATE, not a mandate. Use the sections that fit the content. Some pages need all of them. Some need different structures entirely (avatar profiles, swipe analysis, product pages).

## Ingest Report Template

After every ingest, provide this to the user:

```
## Ingest Report: [Source Title]

**Source:** [title, author, date]
**Saved to:** raw/[filename]

**Pages created:** [[new-page-1]], [[new-page-2]]
**Pages updated:** [[existing-page-1]], [[existing-page-2]]

**Key principles extracted:**
1. [Principle] — added to [[page]]
2. [Principle] — added to [[page]]

**Connections found:**
- [Principle X] confirms/extends [[existing-page]]
- [Principle Y] contradicts [[existing-page]] — documented in Nuances

**What's missing:**
- [Gaps identified, follow-up material that would help]
```

## Wikilink Conventions

- Use filename without extension: `[[persuasion]]` not `[[wiki/persuasion.md]]`
- Link the first meaningful mention in each section, not every occurrence
- Raw source links include the path: `[[raw/2026-04-07-source.md]]`
- Wiki page links are just the name: `[[story-craft]]`

## Raw File Naming

`YYYY-MM-DD-slug.md`

Examples:
- `2026-04-07-cashvertising-ch1-2.md`
- `2026-04-07-reddit-senior-dog-owners.md`
- `2026-04-07-luhxe-winner-ad.md`
- `2026-04-07-batch-3-performance.md`
