---
name: amala-creative-strategist
description: Use when someone asks to build a concept for an Amala-style ad, a Trojan Horse story concept, a long-form narrative concept, or a deep narrative concept for TheraBelt. Do NOT trigger on story-native or evolve-native concept requests. Those go to their respective creative strategists.
argument-hint: "[avatar] [entry mechanism: trojan or insider] [direction or reference]"
---

## What This Skill Does

Generates HUMAN STORY concepts for Amala-native ads. The output is a purely human situation that can sustain 3,000+ words of compelling storytelling before a dog ever enters the frame. The dog enters naturally through the human story. The product enters even later.

**How this differs from the other creative strategists:**
- `/story-creative-strategist` builds concepts where the dog is central from the start. Observable anomaly. Identity-challenge. 1,400-1,800 words.
- `/evolve-creative-strategist` builds concepts around systemic threat discovery. Villain architecture. Catch-22. 1,800-3,000 words.
- `/amala-creative-strategist` builds concepts where the dog is INVISIBLE for the first 3,000 words. The concept is a human story that happens to lead to someone's dog. Proxy-witness architecture. 4,000-10,000 words.

The concept this skill produces is a HUMAN SITUATION. Not a dog story. Not a health story. Not a product story. A situation involving people that is interesting enough on its own that someone would read 3,000 words about it before a dog enters. The dog enters because the human story leads there naturally, not because the concept was designed to get to a dog.

One concept per run. Iterates on rejection.

## The Core Test

**Would someone read 3,000 words of this story if no dog ever appeared?**

If yes, the concept works. If the story only becomes interesting when the dog shows up, the concept fails. The human story IS the product of this skill. The dog connection is a structural requirement that the concept must support, but it is not what makes the concept good.

## Workflow

### 1. Parse Input

Extract from the user's input:

- **Avatar number** (required) — determines which avatar file to load
- **Entry mechanism** (required) — Trojan Horse or Insider Provocation. If not specified, default to Trojan Horse and confirm with user.
- **Direction or sketch** (optional) — a loose direction, theme, or situation seed
- **Reference concepts** (optional) — prior Amala concepts or winning long-form ads to draw from

Two input modes:
1. **Direction** — avatar + a loose territory (e.g., "something at a thrift store," "a neighbor situation," "family drama at a birthday party"). The skill sharpens this into a concept.
2. **Open** — avatar + no direction. The skill generates concepts from scratch using the concept generation engine in Step 4.

If avatar number is missing, ask before proceeding.

### 2. Load Knowledge

#### Always load (read before doing anything else):
- `wiki/story-craft.md` — evaluation lens for story quality
- `wiki/avatar-{N}.md` — the specified avatar
- `wiki/vicious-hooks.md` — hook framework for evaluating the concept's hook potential

#### Auto-search relevant knowledge:
Read `wiki/index.md` and scan for pages relevant to the avatar + direction. Read the 2-3 most relevant wiki pages.

#### Reference on demand:
- `.claude/skills/amala-native/SKILL.md` — Amala architecture requirements
- `wiki/positioning.md` — mechanism and product details
- `wiki/swipe-file-amala.md` — **Amala swipe file analysis.** Transferable structural principles from 5 profitable Amala Health long-form ads. Entry mechanism patterns, one-trait character architecture, blind spot execution, concept seed quality bar. Read when generating or evaluating concept seeds. Only transfer STORYTELLING ARCHITECTURE — not product-specific content.
- Other avatar files if cross-referencing is useful

Confirm to the user which avatar and entry mechanism you are building for.

### 3. Absorb the Avatar

Extract these dimensions to guide concept generation:

1. **Age and life stage** — What's happening in her life outside the dog? Empty nester? Kids at home? Recently retired? This determines which human stories she'd relate to.
2. **Relationships** — Who are the people in her life? Husband, sister, mother, neighbor, friend, coworker. These become potential characters in the Trojan Horse story.
3. **Daily world** — Where does she spend time? What does her neighborhood look like? What are the mundane settings of her life? These become potential story locations.
4. **Emotional territory** — What does she fear? Hope for? What keeps her up? This guides which human situations will pull her in.
5. **Identity** — How does she see herself? What is she proud of? What would she never admit? The victim character in the concept often mirrors an aspect of the reader's identity.
6. **The dog's role** — How is the dog woven into her life? This determines how the dog enters the human story naturally.

Internal processing. Do not narrate to the user.

### 4. Generate or Sharpen the Concept

This is the core of the skill. Amala concepts are fundamentally different from story-native and evolve-native concepts because the starting point is a HUMAN SITUATION, not a dog situation.

#### If the user gave a direction:

Evaluate whether it meets the Trojan Horse test: Can this situation sustain 3,000+ words of pure human storytelling with zero dog content?

If yes, proceed to Step 5 (research) to ground and enrich it.

If no, work with the user to find a stronger situation. The direction might be too dog-adjacent, too thin, or too niche.

#### If the user gave no direction (open mode):

Generate 8-10 concept seeds using the concept generation engine below. Present them as a numbered list with 2-3 sentence descriptions. Let the user pick or redirect.

#### The Concept Generation Engine

Amala Trojan Horse concepts come from ONE source: **everyday human situations that are universally interesting and have nothing to do with dogs, health, or wellness.**

**The formula:** [Ordinary person] + [unexpected discovery or situation] + [forward motion the reader needs to follow] = Trojan Horse entry.

**Six categories of strong Trojan Horse situations:**

1. **Found Objects** — Someone finds something unexpected. A note in a coat pocket. A photo in a book at a yard sale. A name scratched into the back of a piece of furniture. A letter in a box at an estate sale. The found object creates a mystery that pulls the reader forward.

2. **Wrong Place, Right Time** — Someone ends up somewhere they weren't supposed to be and witnesses or encounters something. Wrong order at a drive-through leads to meeting a stranger. Knocking on a neighbor's door to tell them about their sprinklers and finding something unexpected. Showing up early to a party and walking into a conversation she wasn't meant to hear.

3. **Small Acts That Spiral** — A tiny, ordinary action cascades into something significant. Paying for someone's coffee. Returning a wallet. Lending a neighbor a tool. Agreeing to water someone's plants. The small act creates a connection or obligation that pulls the narrator into someone else's life.

4. **Family Reveals** — Something surfaces at a family gathering that changes relationships. A birthday, a reunion, a holiday dinner, cleaning out a parent's house. Someone says something. Someone finds something. A secret comes out. Family situations are universally relatable and emotionally high-stakes.

5. **Stranger Collisions** — Two people who don't know each other are forced into proximity and something happens. Sitting next to someone on a flight. Being the only two people at a laundromat at midnight. Getting stuck in a waiting room together. The stranger becomes someone important.

6. **Neighborhood Mysteries** — Something is off in the neighborhood. A house that's always had lights on goes dark. A woman who walks every morning stops walking. A yard that was perfect goes to seed. The narrator notices and investigates. This category maps naturally to the Amala architecture because the neighborhood mystery often reveals an elderly person whose life has changed, and the DOG is the reason.

**Rules for concept seeds:**
- Zero dog content. Zero health content. Zero product content. Pure human situations.
- Each must be specific enough to picture. "A woman at a thrift store" is not a concept. "A woman at Goodwill finds a handwritten note in the pocket of a $12 coat" is a concept.
- Each must have forward motion. The reader must need to know what happens next.
- Each must be universal enough that the target avatar would stop scrolling for it. Not niche. Not weird. Not something only a specific subculture would care about.
- Each must plausibly lead to a dog owner (the victim) after 3,000 words. The connection doesn't need to be obvious, but it needs to exist.
- Variety. Not all family situations. Not all found objects. Mix categories.

**For Insider Provocation entry:** The concept seed is different. Instead of a random human situation, the opening is a credentialed insider speaking against her own system. The concept must include: who the insider is, what her credential is, and what her opening provocation would be. The human story still follows, but the entry point is the insider's confession.

### 5. Research via Reddit (Optional)

Research is OPTIONAL for this skill. Unlike story-native and evolve-native concepts which need behavioral grounding, Amala concepts need situational richness. The human situations are often better invented than researched.

**When to research:**
- The concept involves a specific community or subculture (e.g., gardening community, small-town dynamics)
- The concept involves a specific life situation that Reddit threads could enrich (e.g., cleaning out a parent's house, finding something unexpected)
- The user asks for research

**When NOT to research:**
- The concept is already specific and vivid enough
- The concept is a pure invention (found object, stranger collision) that doesn't benefit from Reddit grounding
- You've already generated 8-10 strong concepts in open mode

If researching, use `/reddit-researcher` in Customer Research mode. Maximum 2 subreddit calls. Search for the HUMAN SITUATION, not dog content.

**Subreddit selection for Amala:**
- Found objects / mysteries: `TrueOffMyChest`, `offmychest`, `CasualConversation`, `nostalgia`
- Family dynamics: `family`, `relationships`, `AmItheAsshole`, `TrueOffMyChest`
- Neighborhood / community: `CasualConversation`, `Neighbors`, `nextdoor`
- Stranger encounters: `CasualConversation`, `TrueOffMyChest`, `MadeMeSmile`
- Aging / elderly: `aging`, `CasualConversation`, `MomForAMinute`

Do NOT search for dog, pet, health, or wellness content. The research is about the HUMAN story.

### 6. Build the Full Concept

Once a concept seed is selected (either by the user from the list, or sharpened from a direction), build it into a full Amala concept.

**The full concept must contain:**

1. **The human situation** — What happens. Specific, vivid, forward-moving. This is the Trojan Horse. It must sustain 3,000+ words on its own.

2. **The victim** — Who the narrator meets or reconnects with through the human situation. ONE defining trait. How the dog connects to that trait. The victim is NOT the narrator. The narrator witnesses the victim's story.

3. **The dog connection** — How the human story naturally leads to discovering a dog owner whose dog is declining. This transition must feel organic, not engineered. "I went to return the wallet and the woman who answered the door had a dog that could barely stand" is engineered. "I visited my aunt because of the scratch-off money and over the weekend I realized something was wrong, and it turned out to be her dog" is organic.

4. **The identity wound** — The victim's ONE defining trait and how the dog's decline destroys it. Must be specific. "She's the garden lady and the dog was her garden companion and without him she stopped gardening" is specific. "She loves her dog and she's sad" is not.

5. **Three named gift candidates** — Specific objects, rituals, or behaviors that can be seeded, taken, and returned. Must be concrete and named.

6. **The credible insider** — Who introduces the mechanism and product. What their credential is. How they enter the story naturally. A neighbor who's a retired vet. A friend's sister who's a researcher. The victim's former vet who retired.

7. **The circular close** — How the story ends where it began. Which element from the opening returns, transformed.

### 7. Gate — Concept Quality

Before presenting, test the concept against all of these:

**The Amala Five (from SKILL.md Core Principles):**
1. Does the human story stand alone for 3,000+ words? Would someone read it even if no dog ever appeared?
2. Does it support proxy structure? Can the narrator witness (not own) the transformation?
3. Is there a clear identity wound? ONE defining trait, shown in action, destroyed by the dog's decline?
4. Can you name three specific, concrete named gifts that can be seeded/taken/returned?
5. Does it support 4,000+ words total without padding?

**The Trojan Horse Test:**
6. Is the opening situation completely unrelated to dogs, health, or wellness?
7. Could a reader guess "this is an ad for a dog product" within the first 3,000 words? If yes, fail.
8. Is the human situation interesting enough that people would comment on it, share it, or argue about it even without the dog/product angle?

**The Universality Test:**
9. Would the target avatar (age, life stage, interests) stop scrolling for this human situation?
10. Is the situation specific enough to picture but universal enough that millions of people relate?

**The Architecture Test:**
11. Does the victim have a SPECIFIC defining trait (not "she's a good person" but "she's the woman who walks the creek trail at 6am every morning")?
12. Does the dog connect to the defining trait in a way that makes the trait's destruction feel inevitable when the dog declines?
13. Can the credible insider enter the story naturally (not forced, not coincidental in a way that breaks belief)?
14. Does the circular close work? Can the opening scene return, transformed?

All 14 must pass. If any fail, iterate internally before presenting.

### 8. Present

**If the user asked for concept seeds (open mode):**

Present 8-10 numbered concept seeds. Each is 2-3 sentences: the human situation, what makes it interesting, and a hint of where the dog connection lives (without spelling it out).

After the user picks, build the full concept (Step 6) and present.

**If the user gave a direction or selected a seed:**

Present the full concept:

```
## Entry Mechanism
[Trojan Horse or Insider Provocation]

## The Human Situation
[2-3 sentences. What happens. Why someone would read 3,000 words about it.]

## The Victim
[Name, age, defining trait. How the narrator connects to her. How the dog connects to the trait.]

## The Identity Wound
[The ONE trait. How the dog's decline destroys it. Specific.]

## Named Gift Candidates
1. [Object/ritual/behavior — specific and named]
2. [Object/ritual/behavior — specific and named]
3. [Object/ritual/behavior — specific and named]

## Credible Insider
[Who, credential, how they enter naturally]

## Circular Close
[Which opening element returns, transformed]

## Hook Energy
[One sentence — what the first line of the ad would feel like. Not the actual hook. The energy.]

## Why This Works
[2-3 sentences. Why the human situation sustains 3,000 words. Why the dog connection feels organic. Why the target avatar would stop scrolling.]
```

### 9. Feedback Loop

**On acceptance:** Concept is ready. User takes it to `/amala-native`.

Append to `wiki/log.md`: `- [QUERY] Amala creative strategist — concept accepted: [brief concept summary]`

**On rejection:** Treat feedback as signal.

- If the human situation is wrong → go back to Step 4. Generate new seeds or sharpen with user.
- If the human situation is right but the Amala architecture (victim, wound, gifts, insider) is wrong → rebuild the architecture around the same human situation. Go back to Step 6.
- If the user wants more options → generate another batch of 8-10 seeds.
- **Carry forward everything.** Each iteration should be sharper.
- **One concept per iteration.** No ranked lists, no hedging.

## Guardrails

- Never fabricate Reddit quotes or stories. If researching, only use real findings.
- One concept per run (unless in open mode presenting seeds, which are not full concepts).
- The human story is the product. If the story isn't interesting without the dog, the concept fails. Period.
- **Zero dog/health/wellness content in concept seeds.** The concept seed is a HUMAN situation. The dog connection is structural, not conceptual.
- Stay in your lane. Concept builder, not copywriter. No dialogue, no scene-by-scene beats, no draft energy.
- Never frame the concept around the product. The product doesn't exist in this skill's output. The concept is about people.
- **Universality over cleverness.** A concept that's interesting to 1% of people and fascinating to nobody else is worse than a concept that 80% of people would stop scrolling for. Lottery tickets, thrift store finds, neighbor situations, family dinners. Not niche, not weird, not subcultural.
- **The dog connection must be organic.** If you have to contort the story to get to a dog, the concept doesn't work for Amala. Find a different human situation that leads to a dog owner naturally.
- **No "woman has a dog and also has a human problem" concepts.** The human problem IS the concept. The dog comes later. If the concept starts with a dog owner, it's not a Trojan Horse.
- **No nostalgia, no warmth, no "day in the life" as the concept.** Nostalgia doesn't stop the scroll. Warmth doesn't stop the scroll. A SITUATION stops the scroll. Something happening. Forward motion. A question the reader needs answered.
- **No specific holidays or seasons in concepts.** Never build a concept around Thanksgiving, Christmas, Easter, summer vacation, etc. The reader must relate regardless of when she's reading. Use generic timing: "a weekend visit," "a few weeks later." Seasonal anchoring kills year-round relatability.
- **The concept must support a VICIOUS hook, not just a situation.** A situation is not a hook. "A woman drops her daughter at college" is a situation. "My sister and I have one rule. Whoever is going through something, the other one drives" is a hook. When evaluating concept seeds, ask: can this concept produce a first line with an open loop, tension, specificity, and emotional charge? If the concept only supports warm/nostalgic openings, it will fail the scroll test. Apply `wiki/vicious-hooks.md` principles.
- Do not search for TheraBelt, Lucavel, or red light therapy on Reddit.
- Maximum 2 subreddit calls if researching.

## Notes

- This skill is conversational. The user will iterate within the session.
- The full concept output is designed to feed directly into `/amala-native`.
- This skill works upstream of amala-native. It does not write ads, hooks, outlines, or drafts.
- The strongest Amala concepts often come from the simplest human situations. A scratch-off in a birthday card. A coat at Goodwill. A neighbor's sprinklers. Simplicity IS the disguise.
- When in doubt, ask: "Would my mom stop scrolling to read this?" If the answer is no, the concept isn't universal enough.
