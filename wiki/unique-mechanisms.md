# Unique Mechanisms — LLM-Powered Ideation and Evaluation

> Sources: [[raw/2026-04-07-1-unique-mechanisms-overview-mp4.md]], [[raw/2026-04-07-2-1-ump-ideation-with-llms-part-1-mp4.md]], [[raw/2026-04-07-2-2-ump-ideation-with-llms-part-2-mp4.md]], [[raw/2026-04-07-3-ump-evaluation-prompt-and-process-airbnb-arbitrage-mp4.md]], [[raw/2026-04-07-4-ideation-validation-and-expansion-walkthrough-eye-serum-example-mp4.md]]
> Related: [[insight-vectors]], [[rmbc-ii-research-methodology]], [[rmbc-ii-brief]], [[rmbc-ii-system]], [[copy-research]], [[direct-response-copywriting]], [[vsl-mechanism-architecture]]
> Last updated: 2026-04-08


---

## What This Page Covers

The theory of unique mechanisms (UMP/UMS, two-part logical connection, knowledge gap framing) lives in [[insight-vectors]]. This page covers the **practical process** of generating, filtering, and evaluating mechanism ideas using LLMs — Stage 2 of the [[rmbc-ii-system]] pipeline.

---

## The Ideation Process

### Prerequisites

Before generating mechanisms, you need:
1. **Unified research document** — the output of the three research streams in [[rmbc-ii-research-methodology]] (PMA, competitor, psychographic)
2. **Target awareness level** — which segment of the market you're writing for (problem-aware, solution-aware, product-aware)
3. **Product/niche context** — what you're selling and to whom

### The Ideation Prompt

Core structure:

```
Today I want your help coming up with as many unique mechanism ideas for a product in [niche].

The specific product is [description].

I've attached a research brief that will help you understand the market we are speaking to.
[Attach unified research document]

Here's a quick overview of how to understand unique mechanisms in direct response / D2C copy:
[Paste UMP/UMS definition — two-part logical connection, knowledge gap, problem mechanism + solution mechanism]

One thing to pay very careful attention to is the levels of product-market awareness we are focusing on. This is important because the UMP and UMS need to speak to our prospects where they are at. In other words, if the main market segment we are targeting is problem aware, it wouldn't make sense to have the UMP/UMS speak to people who are product aware or most aware.

Please go ahead and get started now.
```

### Which LLM Produces the Best Results

Tested across ChatGPT, Claude, and Gemini for mechanism ideation:

- **Gemini Deep Research**: Best outputs by far. Produces substantive mechanisms with genuine strategic depth, not just clever names. Generated the strongest ideas (e.g., "Asset Gap vs. Income Gap" reframe for BizOp)
- **Gemini 2.5 Pro (standard)**: Decent but less deep. Good for quick generation
- **ChatGPT Deep Research**: Produced "cute nicknames for basic stuff" — surface-level mechanisms without real strategic substance
- **Claude Deep Research**: Similar to ChatGPT — clever labels, not enough depth

### The #1 Filter: Awareness Level Match

**Most LLM-generated mechanisms skew too product-aware or solution-aware.** This is the single most important filter to apply.

Ask of every mechanism: "Does this speak to where our prospect actually is on the awareness scale?"

Signs a mechanism is too far down the awareness funnel:
- It assumes the prospect already knows what the product category is (e.g., "rental arbitrage")
- It frames the problem in terms only someone who's tried the solution would understand
- It addresses guru skepticism or past course purchases (product-aware language)
- It tackles a niche sub-segment (e.g., FIRE movement adherents) instead of the broad problem-aware market

**Why this matters for scale:** Speaking to problem-aware markets gives you 60-80% of the addressable audience. Speaking to product-aware gives you 10-15%. Most businesses that plateau at $1-3M are speaking too far down the funnel. The jump to $10M+ requires speaking to problem-aware and above.

### Iterative Refinement

After the first batch of mechanisms:

1. **Identify the best one and explain why** — "I like #3 the most because it speaks to problem-aware people vs. most of the others which speak to product-aware folks"
2. **Ask for more in the same direction** — "Can you provide more unique mechanism ideas along the lines of #3?"
3. **Or be more specific** — "For this exercise, let's specifically focus on people in the market who are problem-aware"

### Collection Workflow

As mechanisms come in across LLMs and iterations:
1. Create a separate "Potential Mechanisms" document
2. Copy-paste promising mechanisms with dividers between them
3. Include the full UMP and UMS for each (don't just save the name)
4. This document feeds directly into the evaluation step

---

## The Evaluation Process

After collecting mechanism candidates, evaluate them systematically using a second prompt.

### The Evaluation Prompt

```
I'm working on some direct response sales copy that will sell a product to [niche].

I'm going to share a few documents with you:
1. The first is a unified research document that has relevant information for a market that my business will be selling to. It includes information on the level of product market awareness we'll be speaking to, competitor analysis, and key psychographic information.
2. The second document has several unique mechanism ideas that could be used in our sales copy when selling our products or services to the market.

Here's a reminder of what a unique mechanism is and why it's important:
[Paste UMP/UMS definition]

Here's what I want you to do: Evaluate each unique mechanism idea based on their potential for connecting to our target market and persuading them to buy the product we are selling. Rank them from most likely to succeed to least likely to succeed.

In order to make this evaluation, consider the unified research brief and the beliefs, attitudes, awareness levels, and competitive environment within which our target customer finds themselves.

When making your rankings, keep in mind that our core market is people who are [awareness level, e.g., problem-aware].

Please go ahead and do this now.
```

Attach two files: (1) the unified research document, (2) the collected mechanisms document saved as PDF.

### Multi-LLM Consensus Ranking

Run the evaluation prompt across all three LLMs (Claude, ChatGPT with O3 Pro, Gemini). Compare their rankings. When 2 of 3 agree on a top pick, that's high-confidence signal.

In the Airbnb arbitrage test case, all three ranked "Asset Gap vs. Income Gap" in their top two. Two of three had it as #1. "Permission-Based Income Trap" was consistently #2. This consensus matched the human evaluator's intuition.

Each LLM provides different reasoning that's useful:
- Claude gives clean pro/con analysis
- ChatGPT flags practical objections ("must keep the math simple")
- Gemini sometimes combines related mechanisms into hybrid concepts

### The Copy Test: Mechanism in Real Format

After ranking, run the top 2-3 mechanisms through an LLM as actual VSL copy to see how they read in practice. This is where theoretical winners sometimes reveal practical weaknesses.

**The copy test prompt:**
```
We're going to do an in-depth unique mechanism for [product]. I've attached a unified research document that should give you a strong overview of the target market. Here's the summary of the UMP and UMS:

[Paste the mechanism]

For this exercise, let's specifically focus on people in the market who are [awareness level].

Go ahead and write this section in a format that could be used in a video sales letter.
```

**What to watch for in copy test output:**
- Does the mechanism make intuitive sense when explained in plain language?
- Does the logical chain (problem → why past solutions failed → new mechanism → solution) flow naturally?
- Are there framing errors? (e.g., Claude initially wrote "move from the income gap world to the asset gap world" when it should have been "you think you have an income gap, but you really have an asset gap")
- Does the UMS feel as strong as the UMP, or does the solution side fall flat?

**V2 iteration is critical.** When the LLM gets the framing wrong, give specific feedback and re-run. The corrected version is often significantly stronger than V1.

### Final Selection

When you can't decide between top candidates:
1. **Existing offer:** Test both in ads/advertorials and let data decide
2. **New product from scratch:** Sleep on it, ask non-marketing people which resonates more, then trust your gut
3. **Default rule:** If no strong intuition, go with the LLM consensus #1 pick
4. **Objection check:** The mechanism with fewer natural objections has an advantage (e.g., "permission-based income" has the objection that Airbnb itself is still a platform you depend on)
5. **Not mutually exclusive:** Elements of the #2 mechanism can often be woven into the VSL alongside the primary mechanism

### The Expansion Step: From Concept to Copy-Ready Mechanism

After evaluation selects a winner, **expand** the mechanism into a full-length copy section to see how it reads in practice and iterate on naming/metaphors.

**Expansion workflow:**
1. Take the winning mechanism summary and feed it into the copy test prompt (above)
2. Review the output for: awareness-level match (does it assume too much knowledge?), metaphor quality (does it resonate with the target demo?), naming conventions (would the market understand this term?)
3. **Iterate on weak points separately.** Ask: "What are 5 more believable, legit-sounding names for [mechanism name]?" Ask: "What are some other analogies or metaphors besides [current one], keeping in mind our target market is [description]?"
4. Select the strongest name and metaphor, then rerun the expansion with those substitutions
5. The expanded version becomes the draft mechanism section for the VSL/advertorial

**Eye serum example:** "Dermal disarray" became "collagen architecture breakdown" (simpler, more intuitive). The tent analogy became a fabric weave analogy (more resonant with the female target market). "Biotensegrity system" became "structural renewal system" (easier to remember and understand). Each substitution was tested in context to verify it read naturally.

**Key principle:** The expansion step is where you bridge from strategically correct to copy-ready. A mechanism that ranks #1 in evaluation can still fail if it can't be explained simply in 200 words.

### Which LLMs Excel at Expansion

- **Claude (in a project with context):** Best for iterating on names, metaphors, and maintaining consistency with awareness level
- **Perplexity:** Surprisingly strong for generating simple, intuitive mechanisms grounded in real science
- **Gemini:** Strong at combining related mechanisms into hybrid concepts during evaluation, but can overcomplicate during expansion
- **ChatGPT Deep Research:** Tends to overcomplicate with "cute nicknames for basic processes" — better for evaluation ranking than expansion

### Human Judgment vs. AI Generation

Reference: *Power and Prediction* (University of Toronto AI researchers). AI excels at generating options. Human judgment still has an edge in evaluation — especially experienced copywriters who can spot framing errors, awareness-level mismatches, and practical objections that LLMs miss. The evaluation prompts help close this gap for less experienced practitioners, but seasoned judgment remains the quality ceiling.

---

## Nuances

### Health/beauty mechanisms should be simpler than you think
Counter-intuitive finding from the eye serum walkthrough: skincare and health mechanisms that are simpler consistently outperform the complex, multi-system ones. Solution-aware health prospects research heavily but don't want complicated multi-step systems. They want clear, intuitive explanations of what's actually happening.

The "periorbital collagen depletion" mechanism (Perplexity) — which simply stated that the eye area loses collagen 3x faster than other facial skin, creating a "collagen desert" — was preferred over more elaborate mechanisms with multiple cascading systems.

**Filter: count the cognitive leaps.** If the prospect needs to conceptualize and believe 3+ abstract concepts in sequence (e.g., "cells communicate, communication gets scrambled, scrambled signals cause X"), it's too complex. The strongest mechanisms require one cognitive leap at most.

**BizOp is the exception, not the rule.** BizOp mechanisms that sound sophisticated and complex can work because problem-aware prospects in that space need a paradigm shift. But don't generalize this to health/beauty — simplicity wins there.

### Separate name from mechanism quality
LLMs often generate terrible names for genuinely good mechanisms (e.g., "elastase cascade neutralizer," "biotensegrity signal"). Don't dismiss a mechanism because the name sounds made up or too technical. Abstract the underlying idea from the name. Ask: "Is the mechanism itself sound, even if I'd never use this name in copy?" Names can always be changed later — ask the LLM for 5-10 alternatives targeting your market's language level.

### LLMs over-index on meta-problems in evaluation
In the eye serum evaluation, all three LLMs ranked "lipid barrier breach" (a buying objection — product sensitivity) above appearance-driven mechanisms (wrinkles, firmness, tired eyes). Their reasoning: sensitivity is a "barrier to belief" that must be addressed first. While strategically interesting, this shows LLMs can confuse the meta-problem (why solutions haven't worked) with the primary motivation (why the prospect is searching in the first place). Human judgment is needed to weight primary emotional drivers vs. logical buying objections.

### For physical products, include ingredients in the ideation prompt
Add: "Additionally, I have included a list of product ingredients for your consideration. Here is the list: [ingredients]." This grounds the LLM's mechanism ideas in what the product can actually claim, preventing mechanisms that require ingredients you don't have. The eye serum walkthrough caught multiple LLM-generated mechanisms (lymphatic flow enhancers, probiotic microbiome) that required ingredients not in the formula.

### A mechanism can be a great hook but a weak UMS
The "Side Hustle Sandbox" concept was a strong diagnostic (explains why everything failed) but had a weak solution mechanism (just "we'll help you through it"). A strong UMP needs an equally strong UMS — if the solution side is just "we teach you better," the mechanism is incomplete.

### The unified research document is the quality bottleneck
The ideation prompt is only as good as the research it's fed. Weak research = generic mechanisms. The [[rmbc-ii-research-methodology]] output is what gives the LLM the specificity to generate mechanisms that match real market psychology.
