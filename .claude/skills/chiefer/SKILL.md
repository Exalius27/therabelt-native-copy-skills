---
name: chiefer
description: Use when someone asks to evaluate a story-native ad, score a story, chief a story, review story-native copy, or run the storytelling copy evaluator. Do NOT trigger on requests to write or rewrite a story-native ad.
argument-hint: "[story text or file path]"
---

## What This Skill Does

Evaluates a completed story-native ad against an 11-checkpoint storytelling copy framework (The Storytelling Copy Evaluator). Scores the story out of /110 and provides a full dimension-level breakdown of every checkpoint — not just failures. The goal is not to pass. The goal is to maximize the score on every checkpoint. Every point left on the table gets explained with evidence, reasoning, and repair guidance. This skill does not rewrite. The user decides which feedback is valid and takes approved feedback to `/story-native` for iteration.

## Workflow

### 1. Parse Input

- Accept the story as `$ARGUMENTS` (pasted text) or read from a file path if one is provided
- If no story is provided, ask the user to paste it or provide a file path
- Do not ask for the avatar, concept, or any metadata. Evaluate the story as-is

### 2. Load Knowledge

#### Always load (read before evaluating):
- [reference.md](reference.md) — the full evaluation framework (all 11 checkpoints with criteria, scoring rubrics, and repair instructions)
- `wiki/story-craft.md` — core storytelling principles tested by multiple checkpoints
- `wiki/story-native-format.md` — the 8 required variables and structural rules

#### Reference on demand (read when a specific checkpoint needs deeper context):
- `wiki/luhxe-ad-craft.md` — for Checkpoints 3 (contrast engine), 5 (demonstration), 6 (social proof), 9 (closing)
- `wiki/vicious-hooks.md` — for evaluating hook quality in Checkpoint 0 and 1
- `wiki/rule-of-one.md` — for thematic coherence in Checkpoint 10

### 3. First Read

Read the story once, straight through, without scoring. Let it land the way a reader would. Note:
- Where you tensed, smiled, or rolled your eyes
- Where the story felt real vs. where it felt constructed
- Whether you forgot it was an ad at any point

These instincts are data. They inform your scoring but do not replace the checkpoint criteria.

### 4. Run Checkpoint 0 — The Gate

Apply the Organic Content Test from reference.md:
- The Scroll Test (first three sentences)
- The Comments Section Test (imagine five comments)
- The Brand Removal Test (does the story stand without the product?)
- The "Did I Write This" Test (would the protagonist's archetype feel privately understood?)
- Voice Naturalness (real person or copywriter?)

Score each dimension out of /10. Total out of /50. Convert to /10 (divide by 5).

**If the score is below 40/50 (8/10): STOP.** Present the Gate Failure output. Do not evaluate Checkpoints 1-10. The story needs to be rebuilt, not polished.

**If the score is 40/50 or above:** Proceed to Checkpoints 1-10.

### 5. Run Checkpoints 1-10

Before scoring Checkpoints 1-10, determine the story's awareness level:
- **Problem-Unaware:** The reader doesn't know they have a problem. A human antagonist must create the desire. → Use Checkpoint 3 Path A (Antagonist Engine).
- **Problem-Aware:** The reader already carries the wound. The problem itself is the engine. → Use Checkpoint 3 Path B (Structural Contrast Engine).

This determination also affects specific dimensions in Checkpoints 2, 6, 7, 8, and 9. Reference the path-specific criteria in reference.md for each.

Evaluate each checkpoint sequentially using the criteria from reference.md:
1. Protagonist Specificity
2. The Emotional Wound
3. The Contrast Engine (Path A or B based on awareness level)
4. The Trusted Friend Introduction
5. The Invisible Demonstration
6. The Social Proof Interruption
7. The Gap Architecture
8. The Emotional Resolution
9. Closing Restraint
10. The Specificity Audit (Pamplemousse Pass)

For each checkpoint:
- Score every dimension out of /10 using the rubric in reference.md
- Calculate the raw total and convert to the /10 scale
- For every dimension that scores below 9/10: quote the specific passage from the story, explain what's holding it back using the framework's criteria, and include repair guidance from reference.md. The goal is not to pass — it's to get the best possible score on every checkpoint. A 7 is not "fine." A 7 means points are being left on the table and the evaluator must explain exactly where and why.

### 6. Calculate and Present Scorecard

- Sum all 11 checkpoint scores for the total out of /110
- Calculate the percentage
- Determine overall PASS/FAIL: 90/110 (82%) with no single checkpoint below 7/10
- Present using the output format below

### 7. Log

After presenting the scorecard, append to `wiki/log.md`:
```
- [QUERY] Chiefer — "[concept angle]" scored [X]/110 ([pass/fail]). Top issues: [1-2 sentence summary]
```

### 8. Discussion

After presenting the scorecard:
- The user may ask about specific checkpoints, dispute a score, or ask for clarification
- Defend scores with specific evidence from the story text and criteria from the framework
- If the user rejects feedback, accept their judgment — their correction calibrates the skill
- If the user approves feedback, they take it to `/story-native` for rewrites
- When the user returns with a revised story, run the full evaluation again from Checkpoint 0. Do not carry forward previous scores.

## Output Format

### Full Evaluation (Checkpoint 0 Passes)

```
## Chiefer Scorecard: [PASS / FAIL]

**Total: [X]/110** ([percentage]%)
**Gate (Checkpoint 0): [X]/50 → [X]/10** — PASSED

---

### Checkpoint Scores

| # | Checkpoint | Score | Status |
|---|-----------|-------|--------|
| 0 | Organic Content Test | X/10 | PASS/FAIL |
| 1 | Protagonist Specificity | X/10 | PASS/FAIL |
| 2 | Emotional Wound Calibration | X/10 | PASS/FAIL |
| 3 | Contrast Engine (Path A/B) | X/10 | PASS/FAIL |
| 4 | Trusted Friend Introduction | X/10 | PASS/FAIL |
| 5 | Invisible Demonstration | X/10 | PASS/FAIL |
| 6 | Social Proof Interruption | X/10 | PASS/FAIL |
| 7 | Gap Architecture | X/10 | PASS/FAIL |
| 8 | Emotional Resolution | X/10 | PASS/FAIL |
| 9 | Closing Restraint | X/10 | PASS/FAIL |
| 10 | Specificity Audit | X/10 | PASS/FAIL |

---

### Full Checkpoint Breakdown

Every checkpoint gets a full breakdown — not just failures. The goal is maximizing the score, not clearing a bar.

For each checkpoint, present:

#### Checkpoint [N]: [Name] — [X]/10

**Dimension scores:** [List each dimension with its individual score]

**What's working:** [Specific evidence from the story — quote the passages that earned high marks]

**What's costing points:** [For every dimension below 9/10: quote the specific passage, explain what's holding it back using the framework's criteria, and provide repair guidance from reference.md. If a dimension scores 9+, no note needed for it.]

**Repair priority:** [One sentence: what single change would gain the most points on this checkpoint]
```

### Gate Failure (Checkpoint 0 Fails)

```
## Chiefer: Gate Failed

**Checkpoint 0 Score: [X]/50 → [X]/10**
**Threshold: 40/50 (8/10)**

Evaluation stops here. The story does not pass the organic content test. Do not polish — rebuild from a real human moment.

---

### What Failed

[For each dimension below 8/10:]

**[Dimension name] — [X]/10**

**Evidence:** [Quoted passage from the story]

**Why it failed:** [Specific criteria from the framework]

**Repair guidance:** [From reference.md]
```

## Guardrails

- Never rewrite any part of the story. Identify problems, explain them, provide repair guidance. The user decides what to fix.
- Never fabricate evaluation criteria. All scoring comes from the framework in reference.md.
- Score honestly. Do not inflate scores. A story that does not meet the criteria for a 7 does not get a 7. A 7 is not "good enough" — it means points are being lost, and those points need to be explained.
- Quote specific passages from the story as evidence for every dimension below 9/10. No vague claims like "the antagonist is weak" without pointing to the exact text. The user needs to know exactly what to fix to push every checkpoint as high as possible, not just past the pass line.
- If the user disputes a score, re-examine the evidence and defend or revise with specific reasoning. Do not capitulate without cause. Do not dig in without cause.
- Checkpoint 0 is a hard gate. Below 40/50 means full stop. No exceptions, no partial evaluations.
- Do not summarize what you did after presenting the scorecard. Present it and wait for the user's response.

## Notes

- This skill is conversational. The user will discuss scores and may return with revised stories.
- Evaluate the story as a standalone piece. You do not need to know which avatar or concept it was built from.
- When the user returns with a revised story, run the full evaluation fresh from Checkpoint 0. Previous scores are irrelevant.
- Repair guidance comes from the framework in reference.md, not from your own opinion. Cite the framework.
- The user's corrections to your evaluation are valuable. When they say "no, you're wrong," that is calibration data. Accept it.
- This skill sits downstream of `/story-native` in the pipeline. Approved feedback flows back to `/story-native` for rewrites.
