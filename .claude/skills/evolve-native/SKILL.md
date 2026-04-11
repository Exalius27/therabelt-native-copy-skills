---
name: evolve-native
description: Use when someone asks to write a V4 ad, write an evolve-native ad, or create a TheraBelt ad using villain architecture, catch-22, or the evolve strat. Do NOT trigger on generic "write me an ad" or on requests for story-native (identity/Luhxe style) ads.
argument-hint: "[concept] [avatar]"
---

## What This Skill Does

Generates a long-form first-person narrative ad for TheraBelt (~1,800-3,000 words) using the Evolve Strat architecture. Output reads like a genuine personal story where the narrator discovers a systemic threat (Big Pet Food, processed food, chronic cellular damage) through a credible character, learns why obvious solutions fail (the catch-22), and discovers TheraBelt as the only logical response. The reader evolves from unaware to most-aware within a single ad.

**How this differs from `/story-native`:** Story-native uses identity-challenge architecture (Luhxe style) where the buyer's caretaker identity is challenged and validated. Evolve-native uses villain architecture where a systemic threat creates urgency and a catch-22 creates a vacuum only TheraBelt fills. No identity challenge. No recognition moments. The problem itself is the conversion engine.

## Core Principles

These four principles govern everything in this skill. Every decision, outline, scene, dialogue, structure must pass through them. They are not guidelines. They are constraints.

### 1. The Catch-22 Is the Conversion Engine

The entire ad exists to deliver one realization: better food, supplements, vet care ALL require cellular energy the cell doesn't have.

Processed food creates AGEs. AGEs activate RAGE receptors. Chronic inflammation blocks cytochrome c oxidase. Cells can't make energy. Cells can't repair. Disease follows.

Every "obvious" solution the reader would think of runs into the same wall. Better food still needs cellular energy to digest and absorb nutrients. Supplements still need digestion. Even the best vet can only treat symptoms downstream of a cell that can't make energy. Everything she's been doing runs into the same wall.

Only something that bypasses digestion entirely, red light hitting the mitochondria directly through skin and fur, can break the loop. That's TheraBelt.

The catch-22 must land as a revelation, not a lecture. The reader must feel the trap close around her. She must realize, through the story, that everything she's been doing for her dog runs into the same wall. That feeling, "I've been doing everything right and it doesn't matter because the system is broken," is what creates the vacuum. TheraBelt fills that vacuum.

### 2. The Labeling Rule

Show the product and show the result. Never name what happened between them.

Age is the subject. Anti-aging is the label you never use. Talk about dogs aging. Show specific ages. Show a dog that defies what the reader knows age looks like. But never claim the product changes that. The reader sees the product, sees the result, and fills in the gap herself.

Never use "slows aging," "anti-aging," "turns back the clock," or any language that labels what the product did. Never claim TheraBelt prevents cancer. Show the mechanism chain. Let the reader connect the dots herself.

The mechanism in evolve-native goes deeper than Cooper-level. The full chain (AGEs, RAGE, inflammation, blocked cytochrome c oxidase, no cellular energy, can't repair) is delivered through the credible character's dialogue. But the labeling rule still applies at the product level: TheraBelt is shown, results are shown, the connection is never labeled.

### 3. Villain Architecture

Big Pet Food is the systemic antagonist. Mars Inc. owns the food brands AND the vet hospitals. The same company that created the problem controls the system you go to for help.

Rules:
- **Never attack individual vets.** The frame is always "Your vet was trained by the people who make the food." Vets are victims of the system, not villains. The villain is the corporate structure that funds vet school nutrition programs, owns vet hospital chains, and profits from both the food that causes the problem and the treatments for the problems the food causes.
- **Name kibble directly.** No softening. "Processed dog food" = kibble. "Kibble is made to be convenient for humans" is a core truth.
- **Facts, not conspiracy.** The villain is introduced through verifiable facts. Mars owns Royal Canin, Pedigree, Iams AND VCA Animal Hospitals, BluePearl, Banfield. That's public information. Never use conspiracy language ("they don't want you to know," "wake up," "open your eyes"). State what is true and let the reader draw conclusions.
- **The villain is introduced after the credible character has established trust.** The reader must trust the source before hearing the threat.

### 4. Projection Through Fear, Not Identity

The reader must think about HER dog the whole time. But the projection mechanism is different from story-native. Instead of "I'm the caretaker who does the most," the projection is: "This is happening to MY dog right now and I didn't know."

Three mechanisms create projection:

- **Universality of the threat** — every dog that eats kibble is affected. The reader's dog eats kibble. The threat applies to her dog specifically. She can't dismiss it as someone else's problem.
- **Guilt framing (soft, never accusatory)** — "You didn't know." She's the victim of the system, not the villain. She was doing what she was told. The system failed her. Never make her feel stupid or negligent.
- **Narrator as proxy** — the narrator IS the reader. The narrator discovers alongside the reader. Every dumb question the narrator asks is an objection the reader has. The reader's ignorance is validated through the narrator's ignorance. The narrator's emotional arc (skepticism, curiosity, alarm, anger at the system, determination, relief) IS the reader's arc.
- **Concrete specificity as the trigger** — the reader can't project onto vague language. "Her dog seemed slower" fires nothing. "He used to beat her to the back door. Last Tuesday she beat him" fires autobiographical memory — the reader maps her own version of that moment immediately. Every projection moment must be specific enough that a real memory activates. If it could apply to any dog, it applies to no dog in particular.

## Workflow

### 1. Parse Input

Extract from the user's input:

- **Concept** (required) — the story situation, angle, scenario, or hook direction
- **Target avatar** (required) — which avatar file to load
- **Credible character type** (optional) — what kind of authority figure: ex-industry insider, researcher, vet who left the system, formulation chemist, etc. Will default to what fits the concept best.

If concept or avatar are missing, ask before proceeding. Do not assume or default.

Note: Mass desire is not a required input variable. The mass desire is fixed: "I want my dog to be healthy and live longer." The evolve strat reframes WHAT threatens that desire (systemic villain, not just aging) and WHAT solves it (bypassing the broken system). The concept determines the angle of attack.

### 2. Load Knowledge

Read files in two tiers. **Always load** the core files. **Reference on demand** the rest.

#### Always load (read before writing):
- `wiki/story-craft.md` — what makes the story itself work. Read first.
- `wiki/vicious-hooks.md` — hook framework. **Must be read before writing any hook. No exceptions.**
- `wiki/avatar-{N}.md` — only the avatar file the user specified
- `wiki/direct-response-copywriting.md` — belief chains, awareness evolution, story architecture
- `wiki/positioning.md` — V4 mechanism details, positioning chain
- `therabelt-unique-mechanism-v5.md` — the UMP (charring → AGEs → cellular damage accumulation → villain reveal) and UMS (catch-22 → clogged hose analogy → red light solution). **Read this before writing any mechanism content. It is the source of truth for the problem and solution chain.**
- `raw/primitive-labs-valorrea-ad-analysis.md` — the Evolve Strat architecture reference

#### Auto-search relevant knowledge:
Before writing, read `wiki/index.md` and scan for pages relevant to the concept + avatar. Read the 2-3 most relevant wiki pages.

#### Reference on demand:
- `wiki/company-overview.md` — brand, product name, core benefit
- `wiki/story-native-format.md` — structural rules that still apply (product placement, tone)
- `wiki/copy-structure.md` — lead/product buildup structure
- `wiki/vsl-mechanism-architecture.md` — root cause reframe patterns

Confirm to the user which avatar you are writing for.

### 3. Validate the Concept

Before outlining or writing anything, test the concept. The concept must support all five of these:

1. A narrator situation that creates curiosity or tension (hook)
2. A credible character who enters naturally before the problem is named
3. A villain reveal that lands as a fact, not a conspiracy theory
4. A catch-22 delivery that creates a vacuum
5. A product discovery that fills the vacuum through the credible character

If the concept doesn't support all five, stop. Work with the user to find a stronger concept before proceeding.

### 4. Outline the Story

Sketch a loose outline following the 10-point Evolve Strat architecture. The story has its own shape based on the concept, but these elements must exist somewhere:

1. **Hook** — unaware, filtering, open loop. Zero product mention. Must filter for target avatar in first few words. Must create an open loop that demands resolution. The reader doesn't know she has a problem yet. The hook must make her stop scrolling without revealing what the ad is about.

2. **Lead / Credible character** — credible character introduced BEFORE the problem. Not a conspiracy theorist. Someone with real authority: ex-formulation chemist, researcher who studied AGEs, vet who left corporate practice, nutritional scientist. The reader must trust this person before hearing the threat. One line of characterization that explains WHY this person knows what they know.

**Beats 3–4 = UMP (Unique Mechanism Problem).** These flow as one continuous unit. The problem mechanism and villain reveal are not separate segments — they build together. The charring analogy leads into the AGEs chain, which leads into the accumulation story, which leads naturally into "and why does the company making this food also own the hospitals?" Read `therabelt-unique-mechanism-v5.md` UMP section before outlining these beats.

3. **Problem mechanism** — the charring/toast analogy opens it. AGEs from kibble, 122x exposure vs. humans eating fast food daily, accumulation over years before any symptom appears. The cancer and chronic disease stats land here. Delivered through the credible character's dialogue with the narrator asking questions. This is NOT a lecture. It's a conversation where the narrator keeps going "wait, what?" and the credible character keeps explaining in simpler terms.

4. **Villain reveal** — flows directly out of the problem mechanism. Mars Inc. / Big Pet Food system. Facts only: who owns what, who funds vet school nutrition programs, who profits from both the food and the treatment. "Your vet was trained by the people who make the food." Never conspiracy energy. Just facts the reader can verify.

**Beats 5–7 = UMS (Unique Mechanism Solution).** These flow as one continuous unit. The catch-22 creates the vacuum, the hose analogy makes the mechanism concrete, and red light fills the vacuum as the only logical answer. Read `therabelt-unique-mechanism-v5.md` UMS section before outlining these beats.

5. **Condemn the obvious solution** — the catch-22. Better food needs cellular energy to digest and absorb. Supplements need cellular energy to process. Vet care treats symptoms downstream of a cell that can't make energy. Everything she's been doing runs into the same wall. Validate her ("You didn't know. Nobody told you."), then show why it doesn't matter ("But none of it can reach a cell that's already running on empty"). Use the clogged hose analogy: water is on, nozzle is fine, but nothing arrives because the hose is blocked.

6. **Product through credible character** — TheraBelt enters as the logical conclusion of the conversation, not as a pitch. Red light doesn't need to be digested. It doesn't need the cell to have energy first. It hits the mitochondria directly and clears the blockage — the knife that scrapes off what food never could. Two wavelengths: 660nm surface tissue, 850nm deep to organs. Product name drops organically. Don't say "red light therapy" until this moment. Build the problem first, name the solution late.

7. **Category repositioning** — the reader never compares TheraBelt to other light therapy devices. The comparison is always TheraBelt vs. supplements/food/vet care, all of which fail because of the catch-22. "Nutrients vs. energy." Once the blockage clears, the kibble they're already feeding finally gets through — TheraBelt doesn't replace the food, it makes the food work for the first time.

8. **Transformation** — shown through scenes, not summaries. Doubt before certainty. The emotional resolution is not just "my dog looks younger." It's "for the first time, I'm doing something that actually reaches the problem." Relief from the trap, not just cosmetic improvement.

9. **Buying experience modeled** — the narrator orders it, receives it, uses it. Mental rehearsal for the reader. One-time purchase. Frame against vet bills ("I spend more than that every time I walk into the vet's office").

10. **Story-driven urgency** — not batch scarcity. Not "limited supply." The urgency is: every day you don't know this, the damage continues. Every bowl of kibble is another dose of AGEs. Every day the cells can't make energy is another day of cumulative damage. The STORY creates urgency through the weight of the information. The CTA is not "buy before it runs out." It's "now that you know, what do you do?"

The outline should feel like a story someone would tell, not a checklist being filled.

### 5. Check the 10 Required Variables

Every evolve-native ad must include all ten. Verify before drafting:

1. **Hook** — unaware, filtering, open loop. Reader emotionally invested before she knows it's an ad. **You MUST read `vicious-hooks.md` before writing the hook.** The hook filters for the buyer.
2. **Lead / Credible character** — the lead draws the reader in and establishes the narrator's situation. The credible character enters within the lead, before any problem is named, with earned authority. One line that explains why this person knows what they know.
3. **UMP — Problem mechanism** — the charring/toast analogy, AGEs chain, 122x exposure stat, accumulation over years. Delivered through dialogue, not narration.
4. **UMP — Villain reveal** — Big Pet Food / corporate structure flows directly out of the problem mechanism. Facts, not conspiracy. Never attack vets.
5. **UMS — Catch-22** — condemn the obvious solution. Better food, supplements, vet care all need cellular energy the cell doesn't have. Clogged hose analogy. Create the vacuum.
6. **Product through credible character** — natural dialogue, not pitch. Product name drops organically. "Red light therapy" named late.
7. **Category repositioning** — vs. supplements/food/vet, never vs. other light devices. "Nutrients vs. energy."
8. **Transformation scenes** — gradual, doubted, then undeniable. Emotional resolution = freedom from the system, not just cosmetic improvement.
9. **Story-driven urgency** — the information itself is the urgency. Every day without it, the damage continues. No batch scarcity.
10. **Awareness evolution** — reader goes from unaware to most-aware within the ad. The ad IS the funnel.

### 6. Write the Draft

**Start by reading `reference.md`.** It contains detailed craft rules for every aspect of the story. You MUST read it before writing any draft.

**The four Core Principles govern the entire draft.** Every scene, every line of dialogue, every beat must pass through them.

**The narrator is the proxy, not the expert.** She starts ignorant. She doesn't know about AGEs, RAGE, cytochrome c oxidase. Her questions are the reader's questions. She resists before believing. She pushes back. "That sounds crazy." The credible character's responses to her pushback are what make it convincing.

**The narrator's emotional arc IS the reader's arc.** Skepticism, curiosity, alarm, anger at the system, determination, relief. The reader goes through every stage because the narrator goes through it first.

**The whole thing is a story.** There is no point where the story stops and the ad begins. The product, the proof, the mechanism, the urgency, the close, all of it lives inside the narrative. If the reader ever feels the shift from "I'm reading a story" to "I'm being sold something," the spell is broken.

**The story must be genuinely interesting without the product.** If you strip TheraBelt out entirely, would someone still want to read this story? If not, the concept isn't strong enough.

**Guilt is externalized, never accusatory.** "You didn't know. Nobody told you. The system was designed this way." The reader is the victim, not the villain.

### 7. Self-Review

Before presenting, read the Self-Review Checklist in `reference.md` and verify all items pass.

Additionally, check the draft against these 10 evolve-native-specific checks:

1. Does the catch-22 land as a revelation? Can the reader feel the trap close?
2. Is the credible character established before the problem? Does the reader trust them?
3. Is the villain reveal fact-based, not conspiracy-energy?
4. Does the narrator model the reader's journey? Does she ask dumb questions, resist, then believe?
5. Is the awareness evolution complete? Does the reader go from unaware to most-aware?
6. Is the comparison always TheraBelt vs. supplements/food/vet (not vs. other devices)?
7. Is urgency story-driven (information weight) not scarcity-driven (batch limits)?
8. Are vets protected? Never attacked, always framed as system victims?
9. Is guilt externalized? "You didn't know" not "you should have known"?
10. Is "red light therapy" named late, after the problem is fully built?

And check for the four copy errors:
1. **Movies vs mirrors** — is the reader seeing her own life reflected, or watching someone else's life?
2. **Emotional peak** — is the high point on the threat/catch-22 revelation, or on a human relationship?
3. **Buyer action** — does the reader feel compelled to act because the threat applies to her dog, or does she just feel informed?
4. **Benefit urgency** — is there urgency to stop the damage (not just urgency to buy before a price increase)?

### 8. Present

Output the story as a single block of text. No headers, no metadata inside the ad.

After the story, note: avatar used, word count, concept angle, credible character type, and confirm all 10 variables present.

## Guardrails

### Transferred (from story-native, still apply):
- Never invent testimonials or fake customer quotes
- Never make medical claims. TheraBelt supports wellness, does not treat or cure disease.
- Never use marketing language. If it sounds like a Facebook ad, rewrite it.
- Never fabricate scientific data or studies
- Source all product details from the knowledge base files
- Product name is **TheraBelt**. Company name is **Lucavel**. Verify spelling.
- **TheraBelt stands alone. Always.** Never frame TheraBelt as a complement to supplements or part of a stack.
- No bullet lists or numbered features inside the story. Prose only.
- Urgency must be narrative, not promotional
- **Never label what the product does.** No "slows aging," "anti-aging," "turns back the clock."
- **No rule-of-three patterns.** "Same X. Same Y. Same Z." is an AI signature. Two max, never three.
- **No timestamped transformation.** "Week 3." "Five weeks." "Two months in." All banned. Show transformation through scenes.
- **No marketing language in narrator voice.** "Pitch," "invest," "journey," "game-changer" all banned.
- **No poetic dog interpretation.** Describe what the dog does. Never interpret what the dog thinks or feels.
- **No CTA text after the close.** No "TheraBelt." No URL. The story ends on the story.
- **Frame decline as time/ritual disappearing, not physical inability.**

### New (evolve-native specific):
- **Never attack individual vets.** Frame as "trained by the food companies." Sympathy for vet, villain is the system.
- **Never claim TheraBelt prevents cancer.** Show the mechanism chain. Let the reader connect the dots.
- **Name kibble directly.** No softening to "processed dog food."
- **No conspiracy language.** "They don't want you to know," "wake up," "open your eyes," "the truth they're hiding" all banned. Facts only.
- **No identity-challenge architecture.** No "what kind of owner" line. No recognition moments. No husband buildup. No invisible effort threading. No P.S. technique. No caretaker identity thread. These belong in `/story-native`.
- **Don't say "red light therapy" in the first half of the ad.** Build the problem first, name the solution late.
- **15 minutes/day usage detail not included in ads.** Save for product page.
- **The narrator is the proxy, not the expert.** She asks dumb questions. She never explains the mechanism herself. The credible character does that.
- **One-time purchase framing.** Frame against vet bills, not against other products.
- **Guilt is externalized.** "You didn't know." Never "you should have known" or any framing that makes the reader feel negligent.

## Notes

- This skill is conversational. The user may iterate on the draft.
- If the user's concept conflicts with guardrails, flag it and suggest an alternative.
- **When iterating on drafts:** only change what the user specifically called out. If they didn't comment on a line, leave it. If they said they liked something, do not touch it.
- **This skill does NOT replace `/story-native`.** Story-native is for identity-challenge (Luhxe style) ads and may be used for other brands or products. Evolve-native is for V4 TheraBelt ads specifically.
