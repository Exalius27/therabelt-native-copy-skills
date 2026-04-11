---
name: evolve-creative-strategist
description: Use when someone asks to build a concept for a V4 ad, an evolve-native ad, or a TheraBelt ad using villain architecture, catch-22, or the evolve strat. Do NOT trigger on story-native or identity-challenge ad requests. Those go to /story-creative-strategist.
argument-hint: "[avatar] [direction or reference]"
---

## What This Skill Does

Takes a concept direction or sketch from the user, validates it, runs targeted Reddit research to ground it in real moments, and synthesizes a single strong story concept for a TheraBelt evolve-native ad. Output is one concept paragraph, usable details mined from the research, a suggested credible character type, and reasoning — ready to feed directly into `/evolve-native`. The pipeline is concept-first: the user provides the direction, research validates and enriches it. One concept per run. Iterates on rejection.

**How this differs from `/story-creative-strategist`:** Story-creative-strategist builds concepts for identity-challenge (Luhxe style) ads — observable anomaly, buyer identity transformation, elevation framing. Evolve-creative-strategist builds concepts for V4 villain/catch-22 ads — systemic threat discovery, credible character entry, awareness evolution.

## Workflow

### 1. Parse Input

Extract from the user's input:

- **Avatar number** (required) — determines which avatar file to load
- **Direction or sketch** (required) — a concept direction, theme, situation, or rough concept seed
- **Credible character type** (optional) — ex-industry insider, researcher, vet who left the system, formulation chemist, etc. If not provided, the skill will suggest one based on the concept.
- **Reference ads or concepts** (optional) — winning ads or strong concepts to draw inspiration from

Mass desire is fixed for evolve-native: "I want my dog to be healthy and live longer." Do not ask for it.

Two input modes:
1. **Direction** — avatar + a loose angle, theme, or emotional territory to explore (e.g., "pet food distrust," "vet told me everything was fine," "something about what's in kibble"). The skill's job is to sharpen this into a research-ready sketch in Step 4.
2. **Sketch** — avatar + a concept seed that already contains a situation or near-situation (e.g., "woman meets ex-formulation chemist at a dog park," "narrator finds out her vet clinic is owned by the same company that makes her dog's food"). The skill evaluates whether this is research-ready in Step 4.

If reference ads are given, extract the *situation* from the ad (not the product angle or structure) and treat it as direction.

If avatar number is missing, ask before proceeding. If no direction or sketch is provided, ask the user for at least a loose angle before proceeding — do not research without direction.

### 2. Load Knowledge

#### Always load (read before doing anything else):
- `wiki/story-craft.md` — read first. This is the evaluation lens for concept quality.
- `wiki/avatar-{N}.md` — the specified avatar. This is the research compass.
- `wiki/positioning.md` — V4 mechanism, catch-22, villain architecture

#### Auto-search relevant knowledge:
Before moving forward, read `wiki/index.md` and scan for pages relevant to the avatar + direction. Read the 2-3 most relevant wiki pages.

#### Reference on demand:
- `raw/primitive-labs-valorrea-ad-analysis.md` — Evolve Strat architecture reference
- `wiki/story-native-format.md` — structural format that still applies to evolve-native
- Other `wiki/avatar-{N}.md` files — only if cross-referencing is useful

Confirm to the user which avatar you are writing for.

### 3. Absorb the Avatar

Before researching, deeply absorb the avatar file. Extract these six dimensions to guide your research strategy:

1. **Identity and self-concept** — How does she see herself? What labels does she claim or reject? This guides which communities she would be in and what language she uses.
2. **Emotional territory** — What does she fear? What does she hope for? What keeps her up at night about her dog? This guides what kinds of stories will resonate.
3. **Daily reality** — How does she spend time with the dog? What are the mundane moments that carry emotional weight? This guides what specific situations to search for.
4. **Beliefs about the system** — What does she believe about the pet food industry? About kibble? About the vet system? About supplements? Does she trust the system or already suspect something is wrong? This is critical for evolve-native — it tells you how much resistance the narrator needs to model.
5. **Objections and tensions** — What internal conflicts does she carry? Trust vs. skepticism, doing everything right vs. wondering if it's enough, loving her vet vs. sensing something is off.
6. **Relationships** — How do other people relate to her dog ownership? Who might be the credible character? A friend in the industry, a neighbor who knows too much, a coworker who left pet food.

This is internal processing. Do not narrate these extractions to the user. Proceed directly to evaluating the sketch.

### 4. Evaluate the Sketch

Before any research, evaluate whether the user's direction or sketch is specific enough to research productively.

**Two questions:**
1. Does the input contain a specific situation (something happens, someone faces something, there are stakes) or at least a specific territory of behaviors/moments to search for? Or is it a mood, theme, or abstract mechanic?
2. Can you decompose this into 2-3 targeted search queries that would surface real moments on Reddit?

**If yes to both:** Proceed to Step 5.

**If no:** Work with the user to sharpen the direction before spending tokens on research:
- Propose sharpened versions based on the avatar's emotional territory and system beliefs
- Ask clarifying questions about what angle interests them
- Suggest specific situations that map to the direction and enable the evolve-native architecture (credible character, villain reveal, catch-22)
- The goal is to arrive at something research-ready in 2-5 messages

**What "research-ready" means for evolve-native:** You can describe 2-3 specific behaviors, moments, or dynamics to search for on Reddit that relate to the systemic threat territory. "People who discovered what's in their dog's food and changed everything" is research-ready. "The emotional weight of feeding your dog" is not.

### 5. Decompose into Search Queries

Break the research-ready sketch into its component parts and map each to a targeted search.

**How to decompose:**
- Identify 2-3 concrete behaviors, moments, or dynamics in the sketch
- For each, determine which subreddit community would discuss that specific behavior
- Frame each search around **specific behaviors, moments, discoveries, and reactions** — not around emotions, themes, or how people feel. "Dog owner switched from kibble after learning about ingredients" pulls usable scenes. "How people feel about the pet food industry" pulls abstract content.
- Search for the *component behaviors* that make up the scenario, not the exact scenario itself.

**Evolve-native research territories:**
- Pet food ingredient discoveries ("looked at label for the first time")
- Vet system distrust or disappointment ("vet never mentioned this")
- Supplement frustration ("spent thousands and nothing changed")
- Dog health revelations ("found out what was really causing it")
- Industry insider stories ("worked for a pet food company")
- "Did everything right" frustration ("followed every recommendation")
- Food-related health scares ("dog got sick, traced it back to food")

**Subreddit selection:** Read `reference.md` for the full subreddit guide by category. Pick 2-3 based on the sketch.

**Cap: 2 subreddits, 1-2 search queries per subreddit.**

Do NOT include "red light therapy," "TheraBelt," "Lucavel," or anything product-related in the research queries. The research is about finding the human situation, not product discussions.

Present the search plan briefly to the user: "I'll search r/X for [query] and r/Y for [query] to ground this concept."

### 6. Research via Reddit Researcher

Do NOT use Reddit MCP tools directly. All Reddit research goes through the `/reddit-researcher` skill.

**Run `/reddit-researcher` in Customer Research mode** for each subreddit. Run each call sequentially in the main conversation using the Skill tool — do NOT spawn subagents for research, as subagents cannot invoke skills and will bypass the reddit-researcher workflow.

Maximum 2 calls per run, 3-6 deep-reads total. Each call has a targeted research goal derived from Step 5.

After the research reports come back, extract what matters for concept-building:
- Specific situations (what happened, what was the trigger, what did they discover)
- Emotional stakes (what did this person stand to lose, fear, feel betrayed by)
- Vivid details (moments, dialogue, physical descriptions)
- System distrust moments (when did trust break, what fact couldn't be unheard)
- Patterns across reports (recurring frustrations, recurring discoveries, recurring anger)

Filter everything through the sketch — only material that validates, enriches, or challenges the sketch matters.

### 7. Gate 1 — Research Quality

Before building a concept, evaluate the research.

**The check:** Does the research contain specific behaviors, moments, or details that validate or enrich the concept sketch? Component parts count — a post about discovering rendered meat in kibble is a component part. A post about a vet dismissing concerns is a component part. You are checking for raw material that connects to THIS sketch.

**If pass:** Proceed to Step 8.

**If fail:** Reframe ONE search query — try a different component behavior or a different subreddit — and run `/reddit-researcher` again. ONE retry. If the retry also fails, skip to Step 10 and present an honest failure report.

Do not tell the user you are running this gate. Only surface it if both attempts fail.

### 8. Build the Concept

Synthesize from the sketch and research into ONE concept. The concept evolves from the sketch enriched by real moments found in research.

**The concept must be built on the mass desire.** "I want my dog to be healthy and live longer." The concept is a specific situation that activates that desire by threatening it — showing the reader that the system she trusted is the thing working against her dog. If you remove the mass desire from the concept, the story should collapse.

**The concept drops the reader into a situation already in motion.** Things have already happened. Something has already changed. The reader lands at the moment where the situation tipped.

**Five things must be true for the concept to work:**

1. **The reader lands in a situation already in motion** — something changed, something was discovered, the reader needs to see what happens next.
2. **The concept enables a credible character to enter naturally** — there must be a plausible way for someone with authority (ex-industry, researcher, vet who left the system) to cross paths with the narrator. A dog park conversation. A neighbor who used to work in pet food. A friend's husband who's a food scientist. The credible character isn't forced in — the situation invites them.
3. **The concept supports the villain reveal landing as fact, not conspiracy** — the situation must create a context where learning about Mars owning both the food and the hospital feels like a revelation, not a rant. The narrator's trust in the system must be visible first so the betrayal lands.
4. **The concept enables the catch-22 to land as a revelation** — the narrator must be doing things for her dog (good food, supplements, vet visits) that the catch-22 condemns. Her effort becomes the trap. The more she did, the harder the catch-22 hits. "I did everything right and none of it could reach the actual problem."
5. **The narrator is a proxy/learner discovering alongside the reader** — she doesn't know the answer. She's not ahead. She's the reader's stand-in. The concept must place her at the START of the discovery, not at the end looking back.

Read `reference.md` for the full concept criteria, what the concept must contain, what it must NOT be, the scroll test, and examples.

The concept is a paragraph. Not a bullet list, not an outline, not a tagline.

### 9. Gate 2 — Concept Quality

Before presenting, self-evaluate the concept.

Read `reference.md` for the full Gate 2 questions. All must pass.

**If pass:** Proceed to Step 10.

**If fail:** Iterate internally — find a stronger situation in the research, sharpen the emotional stakes, make it more specific. ONE retry. If the retry also fails, proceed to Step 10 with an honest failure report.

Do not narrate the gate-checking process to the user unless both retries fail.

### 10. Mine the Research

Once the concept passes Gate 2, go back through the research with the concept as the lens. You are looking for specific details that could live inside THIS story.

**What to look for:**
- Specific facts or discoveries people made about pet food (ingredient lists, temperature, what "meat meal" means)
- Real phrases people said when they lost trust in the system ("my vet never mentioned any of this")
- Small moments of realization ("I looked at the bag for the first time in eight years")
- Details about what people tried before giving up (supplements, switching brands, raw food)
- Anything from the research that made YOU stop and think "that's real"

Only details that map to THIS concept. Use the real language from the research. Organize by which part of the concept they map to. Five to eight details.

### 11. Present

Read `reference.md` for the presentation templates (success and failure formats).

### 12. Feedback Loop

After presenting, the user will either accept or reject the concept.

**On acceptance:** The concept is ready. The user takes it to `/evolve-native`. The skill's job is done.

Append to `wiki/log.md`: `- [QUERY] Evolve creative strategist — concept accepted: [brief concept summary]`

**On rejection:** Treat the feedback as signal, not failure.

- **Carry forward everything:** The avatar absorption, the research findings, the previous concept, and the feedback.
- **Decide based on the feedback:**
  - If the feedback is about the angle, specificity, or emotional territory — rethink from existing research. Go back to Step 8 and rebuild.
  - If the feedback suggests the entire territory was wrong or raw material was insufficient — go back to Step 4 with the user to sharpen a new direction, then run one more targeted research call.
- **Never run fresh broad research on rejection.**
- **Build a new concept** and run through Gate 2 again before presenting.
- **One concept per iteration.** Do not present multiple options.

## Guardrails

Read `reference.md` for the full guardrails list. Key guardrails:

- Never fabricate Reddit quotes or stories. If research is thin, say so.
- Never search for TheraBelt, Lucavel, or red light therapy on Reddit.
- One concept per run. No ranked lists, no options.
- **Problem architecture with villain.** The concept must enable fear of the system, not just love of the dog. The territory is systemic threat and discovery, not elevation or anomaly.
- Stay in your lane — concept builder, not copywriter. No dialogue, no scene beats.
- Maximum 2 subreddits per run, 3-6 deep-reads total.
- **Never frame the concept around a claim or a mechanism explanation.** The concept works through what the reader DISCOVERS about the system, not what she's TOLD about the product. If the concept's forward motion depends on someone explaining the AGE/RAGE chain, it's a lecture setup, not a story concept.
- **No conspiracy energy.** The concept must enable the villain reveal to land through facts, not anger. If the concept sounds like a documentary about corporate evil, it's in the wrong lane. The narrator must be discovering, not exposing.
- **Narrator must be ignorant at concept start.** She trusts the system. She does what she's told. The concept places her at the beginning of discovery, not at the end.
- If the sketch doesn't sharpen after 2-5 messages, stop and redirect.
- Never build a concept from the avatar file alone. The avatar tells you who the reader is — it does not contain stories.
- No portraits, routines, or "day in the life" structures.
- **The concept must enable the catch-22.** If the narrator isn't doing things for her dog that the catch-22 condemns (good food, supplements, vet visits), there's no trap to spring. Her effort is what makes the catch-22 devastating.

## Notes

- This skill is conversational. The user will iterate on concepts within the session.
- The concept paragraph, usable details, and suggested credible character type are designed to be passed directly to `/evolve-native` as input.
- This skill works upstream of evolve-native. It does not write ads, hooks, outlines, or drafts.
- All Reddit research is handled by `/reddit-researcher`. Do not call Reddit MCP tools directly.
- **This skill does NOT replace `/story-creative-strategist`.** That skill builds concepts for identity-challenge (Luhxe style) ads. This skill builds concepts for V4 villain/catch-22 ads.
