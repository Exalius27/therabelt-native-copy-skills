---
name: story-creative-strategist
description: Use when someone asks to build a concept for a story-native (identity-challenge / Luhxe style) ad. Do NOT trigger on evolve-native, V4, villain architecture, or catch-22 requests. Those go to /evolve-creative-strategist.
argument-hint: "[avatar] [direction or reference]"
---

## What This Skill Does

Takes a concept direction or sketch from the user, validates it, runs targeted Reddit research to ground it in real moments, and synthesizes a single strong story concept for a TheraBelt story-native ad. Output is one concept paragraph, usable details mined from the research, and reasoning — ready to feed directly into `/story-native`. The pipeline is concept-first: the user provides the direction, research validates and enriches it. One concept per run. Iterates on rejection.

## Workflow

### 1. Parse Input

Extract from the user's input:

- **Avatar number** (required) — determines which avatar file to load
- **Mass desire** (required) — the pre-existing force of desire in the market that this concept must channel. This is not something the ad creates — it already exists in millions of people. The concept taps into it and directs it toward the product. Example: "I want my dog to stay young and active forever." If the user doesn't provide one, ask before proceeding.
- **Direction or sketch** (required) — a concept direction, theme, situation, or rough concept seed
- **Reference ads or concepts** (optional) — winning ads or strong concepts to draw inspiration from

Two input modes:
1. **Direction** — avatar + a loose angle, theme, or emotional territory to explore (e.g., "embarrassing dog stories," "the guilt of not doing enough," "something about travel"). The skill's job is to sharpen this into a research-ready sketch in Step 4.
2. **Sketch** — avatar + a concept seed that already contains a situation or near-situation (e.g., "kid can't hang with friends because dog is slow," "neighbor's dog died and now the neighbor won't stop coming over"). The skill evaluates whether this is research-ready in Step 4.

If reference ads are given, extract the *situation* from the ad (not the product angle or structure) and treat it as direction. The goal is to find new stories in that emotional territory, not to copy the reference.

If avatar number or mass desire is missing, ask before proceeding. If no direction or sketch is provided, ask the user for at least a loose angle before proceeding — do not research without direction.

### 2. Load Knowledge

#### Always load (read before doing anything else):
- `wiki/story-craft.md` — read first. This is the evaluation lens for concept quality.
- `wiki/avatar-{N}.md` — the specified avatar. This is the research compass.

#### Auto-search relevant knowledge:
Before moving forward, read `wiki/index.md` and scan for pages relevant to the avatar + direction. Read the 2-3 most relevant wiki pages to pull in frameworks, principles, and prior learnings that apply to the concept direction.

#### Reference on demand:
- `wiki/story-native-format.md` — to understand what story-native needs from a concept
- Other `wiki/avatar-{N}.md` files — only if cross-referencing is useful
- `wiki/positioning.md` — if the concept touches on mechanism or product angles

Confirm to the user which avatar and mass desire you are writing for.

### 3. Absorb the Avatar

Before researching, deeply absorb the avatar file. Extract these six dimensions to guide your research strategy:

1. **Identity and self-concept** — How does she see herself? What labels does she claim or reject? This guides which communities she would be in and what language she uses.
2. **Emotional territory** — What does she fear? What does she hope for? What keeps her up at night about her dog? This guides what kinds of stories will resonate.
3. **Daily reality** — How does she spend time with the dog? What are the mundane moments that carry emotional weight? This guides what specific situations to search for.
4. **Beliefs and values** — What does she believe about dog care, the vet system, supplements, her own role? This guides the ideological frame of the concept.
5. **Objections and tensions** — What internal conflicts does she carry? Spending vs. guilt, skepticism vs. hope, doing everything vs. wondering if it's enough. These tensions are where the strongest concepts live.
6. **Relationships** — How do other people relate to her dog ownership? Husband, friends, kids, vet. These are potential characters and dynamics.

This is internal processing. Do not narrate these extractions to the user. Proceed directly to evaluating the sketch.

### 4. Evaluate the Sketch

Before any research, evaluate whether the user's direction or sketch is specific enough to research productively.

**Two questions:**
1. Does the input contain a specific situation (something happens, someone faces something, there are stakes) or at least a specific territory of behaviors/moments to search for? Or is it a mood, theme, or abstract mechanic?
2. Can you decompose this into 2-3 targeted search queries that would surface real moments on Reddit?

**If yes to both:** Proceed to Step 5. The input is research-ready.

**If no:** Work with the user to sharpen the direction before spending tokens on research. This is a conversation, not a gate:
- Propose sharpened versions based on the avatar's emotional territory
- Ask clarifying questions about what angle interests them
- Suggest specific situations or behavior territories that map to the direction
- The goal is to arrive at something research-ready in 2-5 messages

A five-message back-and-forth to find a strong angle costs far less than three subreddit searches that produce nothing usable.

**What "research-ready" means:** You can describe 2-3 specific behaviors, moments, or dynamics to search for on Reddit. "Embarrassing things dogs do in public" is research-ready. "The emotional weight of dog ownership" is not.

### 5. Decompose into Search Queries

Break the research-ready sketch into its component parts and map each to a targeted search.

**How to decompose:**
- Identify 2-3 concrete behaviors, moments, or dynamics in the sketch
- For each, determine which subreddit community would discuss that specific behavior
- Frame each search around **specific behaviors, moments, and things dogs do** — not around emotions, themes, or how people feel. "Dogs that can't keep up on walks" pulls usable scenes. "How people feel about their aging dog" pulls abstract content you can't build from.
- Do NOT search for the exact scenario you are building. Search for the *component behaviors* that make up the scenario. If the concept involves a dog that can't keep up with other dogs, search for "dog arthritis can't run," "dog lags behind on walks," "dog stopped playing fetch" — not "dog too slow for friends."

**Subreddit selection:** Read `reference.md` for the full subreddit guide by category. Pick 2-3 based on the sketch.

**Cap: 2 subreddits, 1-2 search queries per subreddit.**

Do NOT include "red light therapy," "TheraBelt," "Lucavel," or anything product-related in the research queries. The research is about finding the human situation, not product discussions.

Present the search plan briefly to the user: "I'll search r/X for [query] and r/Y for [query] to ground this concept."

### 6. Research via Reddit Researcher

Do NOT use Reddit MCP tools directly. All Reddit research goes through the `/reddit-researcher` skill.

**Run `/reddit-researcher` in Customer Research mode** for each subreddit. Run each call sequentially in the main conversation using the Skill tool — do NOT spawn subagents for research, as subagents cannot invoke skills and will bypass the reddit-researcher workflow.

Maximum 2 calls per creative-strategist run, 3-6 deep-reads total. Each call has a targeted research goal derived from Step 5.

After the research reports come back, extract what matters for concept-building:
- Specific situations (what happened, what was the trigger)
- Emotional stakes (what did this person stand to lose, fear, hope for)
- Vivid details (moments, dialogue, physical descriptions)
- Patterns across reports (recurring situations, recurring emotions, recurring tensions)

Filter everything through the sketch — only material that validates, enriches, or challenges the sketch matters.

### 7. Gate 1 — Research Quality

Before building a concept, evaluate the research.

**The check:** Does the research contain specific behaviors, moments, or details that validate or enrich the concept sketch? These do not need to be complete situations or stories — component parts count. A post about a dog that can't play fetch anymore because of arthritis is a component part. A post about a kid who carries his dog upstairs every night is a component part. You are checking for raw material that connects to THIS sketch, not just anything interesting.

The research does NOT need to contain the exact scenario you are building. The strongest concepts are often synthesized from component parts scattered across many posts — no single post contains the concept, but the behaviors and moments are real and documented.

**If pass:** Proceed to Step 8.

**If fail:** The research lacks material that connects to the sketch. Reframe ONE search query — try a different component behavior or a different subreddit — and run `/reddit-researcher` again. ONE retry. If the retry also fails, skip to Step 10 and present an honest failure report.

Do not tell the user you are running this gate. This is internal quality control. Only surface it if both attempts fail.

### 8. Build the Concept

Synthesize from the sketch and research into ONE concept. The concept evolves from the sketch enriched by real moments found in research — it is not discovered from scratch.

Synthesis is a spectrum — you might adapt one strong story, combine patterns across many posts, or use the sketch as scaffolding filled with research-discovered situations. Let the research dictate the approach.

**The concept must be built on the mass desire.** The mass desire is the foundation — the pre-existing want that millions of people already carry. The concept is a specific situation that activates that desire and channels it. If you remove the mass desire from the concept, the story should collapse. If the story works just as well without the mass desire, the concept is disconnected and will fail. Check this before anything else.

**The concept drops the reader into a situation already in motion.** Things have already happened. Something has already changed. The reader lands at the moment where the situation tipped and needs to see what happens next.

**The concept must enable the belief architecture:**
- The dog's condition must be observable by people other than the owner — the concept needs witnesses, contexts where the anomaly is public. If the concept isolates the dog and owner, the story can't stack evidence from independent angles.
- The concept must enable projection, not just empathy — design it so the reader can compare to her own dog (specific ages, breeds, behaviors) and discover alongside the narrator rather than being told a finished story.
- The owner's identity must be at stake — the dog's condition reflects who she is as an owner, not just how the dog feels. The dog is evidence of the owner.

Read `reference.md` for the full concept criteria: the five requirements, what the concept must contain, what it must NOT be, the scroll test, and examples.

The concept is a paragraph. Not a bullet list, not an outline, not a tagline.

### 9. Gate 2 — Concept Quality

Before presenting, self-evaluate the concept using `story-craft.md` as the lens.

Read `reference.md` for the 12 Gate 2 questions. All twelve must pass.

**If pass:** Proceed to Step 10.

**If fail:** Iterate internally — find a stronger situation in the research, sharpen the emotional stakes, make it more specific. ONE retry. If the retry also fails, proceed to Step 10 with an honest failure report.

Do not narrate the gate-checking process to the user unless both retries fail.

### 10. Mine the Research

Once the concept passes Gate 2, go back through the research with the concept as the lens. You are no longer looking for patterns or situations — you are looking for specific details that could live inside THIS story. Real moments, real phrases, real behaviors that map to the scenes the concept implies.

**What to look for:**
- Specific physical details someone described that map to a moment in the concept (how a dog greeted them, what they were doing on the floor, what the kitchen looked like at 2am)
- Real phrases or lines people said that carry weight — not because they're clever, but because they're true
- Small behaviors — things a dog did, things a husband said, things that happened in the background — that a writer could drop into a scene to make it feel lived-in
- Anything from the research that made YOU stop and think "that's real" — if it hit you, it will hit the reader

Only details that map to THIS concept. Use the real language from the research — the roughness is the point. Organize by which part of the concept they map to. Five to eight details. More than that dilutes the signal.

### 11. Present

Read `reference.md` for the presentation templates (success and failure formats).

### 12. Feedback Loop

After presenting, the user will either accept or reject the concept.

**On acceptance:** The concept is ready. The user takes it to `/story-native`. The skill's job is done.

Append to `wiki/log.md`: `- [QUERY] Creative strategist — concept accepted: [brief concept summary]`

**On rejection:** Treat the feedback as signal, not failure.

- **Carry forward everything:** The avatar absorption, the research findings, the previous concept, and the feedback. Each iteration should be sharper than the last.
- **Decide based on the feedback:**
  - If the feedback is about the angle, specificity, or emotional territory → rethink from existing research. Go back to Step 8 and rebuild the concept from what you already have. The research may contain a better concept you passed over.
  - If the feedback suggests the entire territory was wrong or the raw material was insufficient → go back to Step 4 with the user to sharpen a new direction, then run one more targeted research call.
- **Never run fresh broad research on rejection.** Iteration re-enters at Step 4 (sharpen sketch with user) or Step 8 (rebuild from existing research). Not Step 6.
- **Build a new concept** and run through Gate 2 again before presenting.
- **One concept per iteration.** Do not present multiple options. Do not hedge. Commit.
- **The concept, usable details, and reasoning all update on iteration.** New concept means new details mined from the research. Do not re-explain the avatar or re-narrate the full research process unless the user asks.

## Guardrails

Read `reference.md` for the full guardrails list. Key guardrails to keep in mind during workflow:

- Never fabricate Reddit quotes or stories. If research is thin, say so.
- Never search for TheraBelt, Lucavel, or red light therapy on Reddit.
- One concept per run. No ranked lists, no options.
- Elevation, not problem-solving. The product elevates, it doesn't rescue.
- Stay in your lane — concept builder, not copywriter. No dialogue, no scene beats.
- Maximum 2 subreddits per run, 3-6 deep-reads total.
- Never frame the concept around a claim. The concept works through what the reader SEES, not what she's TOLD.
- If the sketch doesn't sharpen after 2-5 messages, stop and redirect.

## Notes

- This skill is conversational. The user will iterate on concepts within the session.
- The concept paragraph and usable details are designed to be passed directly to `/story-native` as input. The concept is the situation. The usable details are real moments the writer can draw from to make the story feel lived-in. The user should be able to use both as-is.
- This skill works upstream of story-native. It does not write ads, hooks, outlines, or drafts. It builds the concept and surfaces the raw material that makes those things possible.
- When given reference ads or winning concepts, extract the *situation* (not the product angle, not the structure, not the writing style) and use it as research fuel. The goal is to find new stories in that emotional territory, not to copy the reference.
- All Reddit research is handled by `/reddit-researcher`. Do not call Reddit MCP tools (`browse_subreddit`, `search_subreddit`, `read_post`) directly from this skill.
