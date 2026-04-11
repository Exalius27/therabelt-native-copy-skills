# RMBC II: Deep Research Methodology

The research phase that precedes all copy work in RMBC II. Three parallel research streams unified into one master document that becomes the foundation for briefs, mechanisms, and copy generation.

## Overview

Research answers the question: **What psychological buttons move your target customer to buy?** It's not guessing. It's structured mining of customer language, competitor positioning, and deep psychological drivers.

The output: One unified research document with everything needed to write converting copy across all funnel stages.

## The Three Research Streams

### 1. Product-Market Awareness (PMA) Research

**Goal:** Map customer understanding on the awareness spectrum, estimate TAM, and identify which awareness level contains the most addressable prospects.

**The PMA Deep Research Prompt:**

```
I want your help evaluating the level of market awareness for a product in the [niche] space.

The specific product is [description — e.g., "a coaching program that teaches people how to lease property long-term and manage it as a short-term rental with the property owner's consent"].

I'd like for you to deep dive and help me understand the current level of market awareness for this product in the [geography, e.g., US].

[Optional: Here are more details about the market — e.g., "typically women 35+, professional workers"]

To do this, we can look at the classic levels of product and market awareness often attributed to Eugene Schwartz:
- Unaware
- Problem Aware
- Solution Aware
- Product Aware (aware that this category of product exists, not necessarily our specific brand)
- Most Aware

In order to make this assessment, please utilize a variety of signals, including social media chatter, articles and blog posts, influencer content, search trends, any available sales data on the product category and its growth, and so on.

Additionally, please provide an overview of the estimated TAM (total addressable market) for this product.

Please provide a rough estimate of what percentage of the TAM falls into each category of product market awareness.

At the end of your review, please give me a final selection for which stage of product market awareness the majority of individuals within the market fall.

Thanks.
```

**Best LLM for this:** Gemini Deep Research gives the most detailed output with tables, charts, and search-data-backed estimates. ChatGPT (O3/O3 Pro) is also good. Results differ between LLMs but usually converge on the same broad conclusion.

**How to read the output:** Skip the background sections. Go straight to the TAM estimates and awareness-level percentage breakdowns. That's what matters for copy strategy. Even when LLMs disagree on exact percentages, they typically agree on the dominant segment (e.g., both might put 70% of TAM in unaware + problem-aware + solution-aware, just distributed differently).

**Key insight:** Different awareness levels require completely different messaging. An unaware market needs problem definition. A solution-aware market just needs to know why your solution is better.

**The scaling insight:** Most businesses that plateau at $1-3M/year are speaking to product-aware or solution-aware markets (10-25% of TAM). The jump to $10M+ requires speaking to problem-aware and above (60-80% of TAM). Understanding your awareness distribution determines your growth ceiling.

**Example — Injectable NAD+:** Both Gemini and ChatGPT estimated 70%+ of the market is unaware or problem-aware. Very few people know what NAD+ is. This means: (1) you need more copy to educate, (2) messaging should lead with problems (energy, aging, vitality) not solutions (NAD+), (3) scaling requires manufacturing demand through education, not just capturing existing demand.

**Example — Airbnb Arbitrage Coaching:** ~70% unaware to solution-aware. Most people want extra income but have never heard of "rental arbitrage." Speaking to problem-aware people ("want financial freedom, side hustles haven't worked") gives you the largest addressable audience.

**VSL journey mirrors the awareness scale:** A good VSL takes the prospect through the awareness journey: starts at their level (problem-aware), introduces solutions, explains why other solutions fail, then presents your specific solution. You're walking them from problem-aware to most-aware inside a single piece of copy.

### 2. Competitor Research

**Goal:** Understand what competitors claim, what customers like/dislike about them, and what competitive advantages exist. Two things matter most: core messaging/claims and what consumers love and hate.

**The Competitor Research Prompt:**

```
I want your help doing competitor research for a product in the [niche] space.

The specific product is [description] and we are focused on competitors in [geography].

Specifically, we're looking for [DTC brands who primarily sell online through e-commerce or direct response sales funnels / coaching programs and training platforms who primarily sell online through direct response sales funnels].

For each competitor you find, I want to understand:
- Who is the target demo they speak to?
- What are their main new customer acquisition funnels?
- What is their core messaging in their ads, advertorials, and other advertising assets?
- What are examples of their advertisements or landing page assets, if available?
- Are there any recurring or repetitive hooks, angles, big ideas you see consistently appearing in their advertising assets?
- What is their pricing structure?
- What do customers love and what do customers dislike about them? Use reviews, social signals, social media platforms, etc. to answer this.
- If available, what is their estimated overall business revenue and revenue for their hero products?

[Optional: Here are more details about the market — e.g., "Let's focus on skincare for women" or "Let's focus on amateur golfers"]

Please go ahead and get started now.
```

**Follow-up prompt for specific language (when Gemini's overview isn't granular enough):**
```
For each of the [niche] businesses featured, what are the core promises they make to prospective customers, value props, language they use when selling their [products/programs], etc.?

Basically, if I were selling a [product description], I'd be looking for phrases, sentences, fragments that we see competitors repeatedly using that I can use as well.

Please go ahead now.
```

**Best LLM for this:** Start with Gemini Deep Research for the overview (tables, competitor profiles, what customers love/hate). If you need more specific claims and phrases, run the follow-up prompt in ChatGPT (O3 Pro) or Perplexity. Gemini gives better structure; ChatGPT gives better specific language.

**What to focus on in the output:** Skip the background analysis. Go straight to:
1. Core messaging and claims (what promises are competitors making?)
2. What customers love and dislike (from reviews, Reddit, social media)
3. Pricing structure (to understand how you stack up)
4. Tables — easiest place to get snapshot comparisons

**Key insight:** Don't invent positioning. Extract it from what competitors are doing AND what customers are responding to.

**The direct response insight:** Compare revenue of brands using specific direct-response promises vs. brands using generic brand messaging. In golf: Performance Golf ($100M+) uses "fixes your slice without changing your swing" while competitors using vague brand messaging ("premium quality, affordable price") do a fraction of that revenue. Specificity wins.

**Competitor research is zoomed in vs. PMA.** PMA maps the entire awareness spectrum from unaware to most-aware. Competitor research focuses specifically on products similar to yours — it doesn't care about awareness levels. It's asking: what are the people selling something like mine saying, and how do customers respond?

### 3. Psychographic Research

**Goal:** Understand the psychological architecture of your target customer — their worldview, fears, aspirations, identity, and belief systems. This is the deepest layer of research and produces the richest copy fodder.

**Demographic vs. psychographic:** Demographics are facts (age, income, location). Psychographics are psychology (what they believe, fear, hope for, resent). Demographics tell you who to target. Psychographics tell you what to say.

**The question categories** (each produces usable copy material):

1. **Who is your customer?** — Basic demographic anchor (age, gender, life stage, income level)

2. **Attitudes** — Political, social, economic, religious leanings. Conservative vs. liberal, trust in institutions, views on wealth. This determines tone and framing. A market that believes "the rich are evil" gets different messaging than one that believes "hard work creates wealth."

3. **Hopes and dreams** — What do they want beyond the surface-level fix? Not just "no wrinkles" but "feeling confident, sexy, loving who they see in the mirror." Not just "more money" but "buying your kids whatever they want at Disney without flinching at the price."

4. **Victories and failures** — Past attempts to solve this problem. What worked partially? What was a total waste? This surfaces objections and builds relatability in copy.

5. **Outside forces they blame** — External culprits they believe are responsible for their problem. Big pharma, the government, the food system, environmental toxins, "the system is rigged." These become alignment tools in copy: "It's not your fault — here's who's really responsible."

6. **Prejudices and biases** — Not racism — but who do they distrust? 45+ women distrust 25-year-old beauty counter reps. Young people resent baby boomers. Market distrust of "gurus." These shape which spokesperson/credibility elements will land.

7. **Core beliefs about life, love, and family** — Who are they at their core? What do they value? What identity do they want to protect or achieve?

8. **Other existing solutions** (broader than competitor research) — All solutions, not just direct competitors. Weight loss: supplements, GLP-1s, gym memberships, diets, coaching, surgery. What do they like/dislike about each? Horror stories?

9. **Does the market believe existing solutions work?** — Even if solutions work (like Ozempic), there are still objections: cost, side effects, "it's a medication," injections. You can still contrast against working solutions.

10. **Curiosity / conspiracy / forgotten solutions** — The richest vein for hooks and angles:
    - Has someone tried to solve this in a unique historical way? (e.g., undecylenic acid cured foot fungus in WWII, then was forgotten)
    - Is there a conspiratorial suppression story? (Tesla's energy discoveries, "who killed the electric car")
    - Is there a "paradise lost" corruption angle? (Big tobacco scientists moved to food industry in the 80s, corrupted the food supply)
    - Pre-1960 solutions that worked but were forgotten?
    - Why do remote/ancient populations not suffer from this problem?

**The Psychographic Research Prompt:**

```
I am writing some sales copy targeted towards [demo/market information, e.g., "US women 40+ who have wrinkles, dark spots, or puffy eye bags"].

I'd like your help doing psychographic research. What are their struggles and pain points? What are their beliefs?

Below is a series of questions I used in the past as part of my RMBC method for copywriting, where the R stands for research. This should be a good framework to use while doing research on this demographic.

I'd love it if you can even provide quotes from folks in this demo by looking at comments on social media or in forums, etc. Basically, we want to hear what they're saying and what they believe. We want to hear answers in their own words.

Here's the list of questions:
1. Who is your customer? (demographics, life stage)
2. What attitudes do they have? (social, economic, political, religious)
3. What are their hopes and dreams?
4. What are their victories and failures?
5. What outside forces do they believe have prevented their best life?
6. What are their prejudices? (biases, not racism — who/what do they distrust?)
7. Sum up their core beliefs about life, love, and family
8. What other existing solutions does the market use? What has their experience been like? What do they like? What do they dislike? Are there any horror stories?
9. Does the market believe existing solutions work? If not, why?
10. Has someone tried to solve the market's pain points before in a very unique way? What was the result?
11. Is there a conspiratorial story behind why old solutions didn't work?
12. Are there any older attempts to solve this problem (pre-1960) that are unique? What happened? Were they successful but forgotten, or were they a failure and why?
13. Is there a belief that the market's pain point used to not exist or used to not be so bad? Is there a belief that it has been recently exacerbated by outside forces? If so, what are those forces?
```

**Follow-up prompt for more pain points and quotes:**
```
To help us continue deep research and leverage social signals like social media, forums, etc., please provide:
- As many quotes as possible from [demographic] describing their specific pain points around [problem area]
- As many quotes as possible from [demographic] describing the opposite — what adjectives and other descriptors do they use to describe their desired outcome?
```

**Multi-LLM workflow:** Run the psychographic prompt across Gemini, ChatGPT, and Perplexity. Each produces different strengths:
- **Gemini:** Most in-depth, best at the conspiracy/forgotten solutions sections, provides citations to follow up on
- **ChatGPT:** Best at pulling specific customer quotes, good at horror stories
- **Perplexity:** More concise, good summaries, decent at quotes

**Combining into one document:** Upload all three outputs as PDFs to Claude with this prompt:
```
I'm writing some sales copy targeted towards [demographic]. I've had multiple LLMs generate deep research reports for me on this demographic, and I'm attaching each of those as a PDF here. What I'd like your help with is to go through these reports and then create one unified report that I can use as a reference. For greater context, here is the prompt I gave to LLMs for deep research: [paste original prompt]. Please go ahead and create the document now.
```

**Key insight:** This isn't surface-level demographic data. It's the emotional/psychological architecture that makes them move toward or away from solutions. Every answer here becomes potential copy: hooks, angles, objection handles, story elements, credibility plays.

**Example:** A woman buying anti-aging skincare isn't just buying to "look younger." She's buying to feel like she still matters, to be desirable, to not be invisible. Different mechanism entirely.

**The copy insight from psychographic research:** "Just as I start feeling more confident and comfortable in my own skin, that same skin starts to betray me." — This line came directly from reading through the psychographic output. The research generates the angles.

## The Unified Research Document Process

**Step 1:** Complete all three research streams as separate documents (PMA, competitor, psychographic).

**Step 2:** For psychographic research done across multiple LLMs, first combine into one psychographic summary using the combining prompt from the psychographic section above.

**Step 3:** Upload all research documents as PDFs to Claude and run the unified research prompt.

### The Unified Research Prompt

```
I'm working on a marketing campaign in [niche]. The product is [product] and we focus on customers in [region].

So far, I have performed research around product market awareness levels, competitors, and psychographic research. I'm going to upload several PDFs that contain this research.

What I want you to do is go through these PDFs in depth and then create one unified research brief that contains all of the key elements that would be needed in order to successfully implement this campaign.

Specifically, this will be a unified document that I will share with you and other LLMs for background information and context as we generate additional copy and marketing assets, most of which will be direct response oriented.

I don't need information on TAM size or even specific strategies that were included in these deep research reports. Instead, what I really need are the following:

1. Target market demographic overview. Focus on people who fall into the [problem-aware and solution-aware] market segments primarily.
2. Target market psychographic overview: what are their problems and pain points? What are their hopes and dreams? Specifically, what does their ideal future state look like where their problem has been solved? What would that look like? How would they look and feel? When they dream and imagine this future, what else is true about their life at this point? How do they view themselves more broadly? What language should we use speaking to them? What language should we avoid? What are the primary promises we can make to them and that they would want to hear when it comes to solving their pain points?
3. What will their biggest objections be to our marketing campaigns for our product? And how can we address those?
4. What existing solutions has the market tried already? Why are those existing solutions not adequate enough?
```

**Key design decisions in this prompt:**
- Explicitly excludes TAM data and strategy recommendations — those aren't needed for copy generation
- Specifies which awareness segments to focus on (change this based on your PMA findings)
- Asks for language to use AND avoid — this directly informs copy generation
- Originally had a "5. Anything else that's relevant" section but removed it after testing — it just added noise

**Troubleshooting:** If Claude gives a "maximum image count" error, it's usually because the PDFs contain embedded images from copy-pasted Gemini output. Fix: paste research into Google Docs using Ctrl+Shift+V (unformatted paste, strips images), then download as PDF. Alternative: use Poe.com as a backup route to Claude's API.

**Step 4:** The unified output becomes your reference document for brief writing, mechanism evaluation, and copy generation. This single document gets uploaded to every subsequent Claude conversation or project.

### What the Unified Document Should Contain

1. **Target market demographic overview** — Age, life stage, income, digital behavior, shopping patterns, focused on the awareness segments you're targeting
2. **Core problems and pain points** — Physical, emotional, psychological, practical frustrations, with verbatim customer language
3. **Hopes and dreams / ideal future state** — Visual, emotional, lifestyle transformation they want
4. **Language guidance** — Words and framing to use, words and framing to avoid
5. **Primary promises that resonate** — Efficacy promises, emotional transformation promises, lifestyle promises
6. **Primary objections and how to address them** — Skepticism, cost, past failures, competition
7. **Existing solutions and their inadequacies** — What they've tried, why each category falls short

**Critical thinking required:** The unified document is excellent but not infallible. Review language recommendations critically — "avoid instant transformation" doesn't apply if you're literally selling an instant-result product. "Avoid anti-aging" might be wrong depending on your brand positioning. The LLM is synthesizing general research; you still need to apply judgment for your specific product.

## Ingredient Deep Research for Claims

A supplemental research stream for products with specific ingredients (supplements, skincare, etc.). Produces study-backed claims that feed directly into briefs and copy.

### The Ingredient Research Prompt

```
These are the ingredients for [product description]. [List ingredients]

[Optional: I'm attaching two documents for reference. One is an overview of the market and their pain points. The second is a unique mechanism I'll be using.]

What I want you to do is come up with a list of claims for each ingredient that can be tied back to specific studies or research. This research needs to come from stuff published on NCBI or other scientific journals, and cannot include things from random blogs or websites. Give preference to RCTs (randomized controlled trials) on humans, but if those aren't available, you can include other studies too.

Claims should be focused on the following:
1. How the ingredient supports the unique mechanism of the solution (when applicable)
2. Additional studies of how the ingredient helps alleviate pain points of the market, regardless of the connection to the mechanism

Please keep the claims digestible with references. I don't need a big biology lesson. I just need accurate claims showing the best efficacy and results possible for each ingredient, so I can take those and use them in various marketing assets.
```

**Best LLM for this:** Perplexity is the best — gives bite-sized claims with direct citations and links. ChatGPT is also good but sometimes misses key figures.

**Run it twice:** Once without the mechanism context (to get the broadest set of claims) and once with it (to get mechanism-specific framing). Combine the best of both, because the mechanism-focused run may omit strong general claims.

**Output feeds into:** The brief (ingredient section) and copy generation (ingredient parade sections in VSLs, product pages).

---

## Research Tools & Shortcuts

**Perplexity AI** — Fast research for supplement claims, studies, ingredient deep dives. Can pull citations, validate claims, and compile research in 5 minutes vs. hours of manual work.

**Amazon Reviews** — Gold mine for competitor sentiment. Filter 5-star and 1-star reviews to see what buyers love and resent. Extract verbatim customer language.

**Reddit** — Target subreddit search for authentic customer psychology. Example: r/supplements for supplement buyer psychographics, r/skincare for beauty market language.

**Facebook Groups** — Niche communities where your target customer congregates. Mine real conversations, pain points, and hopes.

**YouTube Comments** — Competitor video comments reveal what messaging resonates and what objections arise.

**Customer Interviews** (if available) — Best source for verbatim language, emotional drivers, and belief shifts.

## What Good Research Produces

**Verbatim customer language** you can steal for copy. ("I thought I'd need a procedure..." vs. your headline: "I thought I'd need a procedure until I tried X.")

**Competitive advantages** that aren't obvious from the product itself. (Feature: CoQ10. Advantage: The only supplement using fermented CoQ10 for bioavailability—a detail from research that competitors don't emphasize.)

**Psychological insight** that shifts the entire copy angle. (Everyone sells weight loss. Winner uncovers: buyers actually want to be *seen as* a person who takes care of herself. Different mechanism.)

**Mechanism seed material.** You're not inventing mechanisms from scratch; you're extracting them from what already resonates in the market, then making them unique to your product.

## Common Mistakes

**Skipping research because you "know the market."** Experience is valuable, but research uncovers insights you didn't know you didn't know.

**Relying on demographic data alone.** Age and location don't predict copy. Psychological drivers do.

**Mixing research with copy writing.** Keep them separate. Research is data gathering. Copy generation happens after, using the research as a reference.

**Assuming one avatar = one research document.** Different awareness levels within one demographic may need different messaging. Research should surface this.

## Integration with Brief & Copy Generation

Once unified research is complete, it becomes the reference document for:
- **Brief development** — All brief sections are informed by research (pain points, big promise, mechanisms, objections, credibility builders)
- **Mechanism evaluation** — Use research to score which mechanisms will resonate most
- **Copy generation feedback** — When giving feedback to Claude on copy, reference research to justify direction changes

Example feedback loop:
> "Research shows they're skeptical of supplements that promise immediate results. Reframe this as 'cumulative effect' and emphasize day-by-day progress stories, not overnight transformation."

## Sources

- Stefan Georgi, RMBC II — Product-Market Awareness Deep Research (Module 1.2)
- Stefan Georgi, RMBC II — Competitor Research Walkthrough (Module 2)
- RMBC II Course files: 2026-04-07-1-2-product-market-awareness-deep-research-prompt-examples-mp4.md, 2026-04-07-2-competitor-research-walkthrough-and-examples-mp4.md, 2026-04-07-3-1-psychographic-research-overview-mp4.md, 2026-04-07-3-2-prompt-overview-and-eye-serum-examples-mp4.md, 2026-04-07-4-unified-research-and-process-prompt-overview-examples-mp4.md, 2026-04-07-5-ingredient-deep-research-for-claims-mp4.md

## Related

[[rmbc-ii-system]] — Overview of complete RMBC II system
[[rmbc-ii-brief]] — How research informs brief development
[[unique-mechanisms]] — How research feeds mechanism ideation and selection
[[copy-research]] — Complementary research methodology (earlier source)
[[creative-testing]] — Feedback loops for ad testing and pattern recognition

## Last Updated

2026-04-08
