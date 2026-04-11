# Desire Testing — Troubleshooting Framework

> Sources: [[raw/2026-04-08-9-desire-testing-troubleshooting-sop.md]]
> Related: [[insight-vectors]], [[avatar-segmentation]], [[native-ad-visuals]], [[copy-structure]], [[direct-response-copywriting]], [[persuasion]], [[halbert-market-first]], [[copy-research]], [[rmbc-ii-funnel-structure]], [[product-research-criteria]], [[market-fundamentals]], [[ecom-research-methodology]]
> Last updated: 2026-04-08

---

## Core Thesis

Desire testing is the first Facebook Ads campaign for a new product. You launch a CBO with 3-5 ad sets, each targeting one mass desire, same images across all. You spend $200-300 over 2-3 days to find a winning desire (highest spend + conversions at breakeven ROAS or higher). When it fails, it fails at one of two checkpoints, and each has a different root cause.

Most people get stuck here not because the system is broken, but because they don't know how to diagnose WHY it failed. This page is the diagnostic framework.

---

## The Two Checkpoints

### Checkpoint 1: High CPMs and CPCs (Above $3 CPC Within First $50)

**What it means:** Facebook's auction is penalizing your ad. The algorithm predicts low click-through, low conversion, and negative user experience, so it charges you more per impression. High CPC is a downstream symptom of high CPM.

**Why CPC matters as a directional indicator:** At $5 CPC, $500 buys 100 visitors. At 3% conversion and $100 AOV, that's $300 revenue on $500 spend. Even at $3 CPC the math barely breaks even before product costs. For products in the $40-120 range, the threshold is roughly $2 CPC for profitability to be realistic.

**Important:** This CPC checkpoint ONLY applies to desire testing. Once you have winning ads in a running CBO, CPC becomes irrelevant. What matters then is whether winning ads take majority spend and improve overall performance.

**Root cause is always one of three things:**

1. **Boring content.** Image and copy don't stop the scroll. Nothing visually or textually compelling enough to pause on. See [[native-ad-visuals]] and [[vicious-hooks]].

2. **Non-native content.** The ad feels like an ad. The image is ~90% of the Facebook canvas. If the image looks like marketing material or doesn't belong in their feed, CPM tanks immediately. AI images can work if they feel organic. Copy that reads like copy instead of a real post kills it too. See [[native-ad-visuals]].

3. **Avatar incongruence.** The lead doesn't describe the avatar's reality in their words. It's too dramatic, too vague, or describes experiences that don't match what the avatar actually thinks and feels. They can smell the gap between "someone guessing at my life" and "someone who gets it." See [[copy-structure]] for lead requirements.

**Action sequence when CPC is above threshold:**

1. Pause the CBO
2. Research native content on Facebook (groups, organic posts, search results) for 30 minutes — screenshot images that perform organically in the niche
3. Research avatar language on Facebook for 30 minutes — copy actual posts by real people in the niche
4. Analyze observations: how does the audience actually talk? What images do they engage with?
5. Create 3 new images modeled on organic content (recreate, don't copy)
6. Write minimum 1 new ad copy per desire grounded in real avatar language
7. Launch a NEW CBO campaign (same structure)
8. If still high CPC after $50, repeat: pause, 3 new images, 1 new copy, new CBO
9. If 3-4 rounds ($100-150 total) still produce high CPC, the problem is deeper — move to Checkpoint 2

---

### Checkpoint 2: Low CPC but No Conversions (No Buying Intent)

**What it means:** Facebook likes your content enough to show it cheaply, but nobody buys. The ad is engaging but not converting. This is a harder diagnosis because multiple factors could be responsible.

**Pre-check: Eliminate non-ad variables first.**

Before testing new ads, run the redundancy check:

- **Landing page:** Does it replicate a proven competitor's structure and layout? Does the offer mirror theirs? Do product images look professional and trustworthy? Can you complete a frictionless test checkout?
- **Product validation:** Did you validate $300k+/mo estimated revenue via Facebook Ads to Shopify using SimilarWeb? (Not TikTok Shop or spy tools like Kalodata.)

Once these pass, the problem is at the ad level. Diagnose in this order:

---

## The Five Diagnostic Areas (Test in Order)

### 1. New Leads for the Same Desire + Avatar

The lead (opening portion before product introduction — the Problem + Agitation in PAS) is where the reader decides if this ad is for them. Not logically. Emotionally.

**When the lead isn't converting, the avatar doesn't see themselves in it.** The way you describe their problem, situation, and experience doesn't feel like theirs. It feels like someone guessing. Or marketing.

Test questions:
- Are you using words they actually use? (See [[copy-research]])
- Are you describing experiences they actually have?
- Is the copy too dramatic — more novel than Facebook post?
- Would the avatar read the first 3 lines and think "that's exactly what I'm going through"?

Action: Go back to Reddit/Facebook research. Find the specific experiences and emotions that define this person. Rewrite the lead to mirror their internal world. See [[copy-structure]] for lead mechanics.

### 2. New Desires for the Same Avatar

If the lead feels right but they're not buying, the desire might not be strong enough. People click from curiosity. They buy from motivation.

**The most common failure: desires that are actually product pitches.**

Bad desires (these are mini sales pitches with features and mechanisms baked in):
- "I want to reclaim my evenings, my living space, and my autonomy"

Good desires (how a real person thinks in their own words):
- "I want my baby to grow up healthy"
- "I want to stop feeling exhausted all the time"
- "I want to be able to provide financially for my family"

**The test:** If you can't imagine a real person saying it out loud to a friend, it's not a desire. It's copywriting.

**Dig deeper into the desire.** Surface desires don't drive action. "Get better sleep" is surface. "I'm afraid I'm going to lose my job if I keep underperforming because I'm so tired" is the instinctual desire that makes people act. The question: "My avatar has this problem. What are the different reasons someone would NEED to solve this problem?" See [[persuasion]] for the Life-Force 8 biological desires.

### 3. New Mechanism (UMP + UMS)

The mechanism is how you explain why the problem exists and why your product solves it. It's the bridge between desire and belief. See [[insight-vectors]] for mechanism generation.

At this point the reader feels understood and wants the result, but doesn't believe your product delivers it. The explanation isn't creating conviction.

**Most common failure: your mechanism matches your competitors'.** If you're using the same framing, your audience has already seen it. They either already bought from someone else, or didn't believe it the first time. Either way, you lose.

**Two parts to a strong mechanism:**

**UMP (Unique Mechanism of the Problem)** — The unique reason WHY the problem exists. Not the obvious surface explanation. A deeper, often hidden cause that reframes how the reader understands their problem. Makes them think "THAT'S why nothing else worked." Invalidates every other solution.

**UMS (Unique Mechanism of the Solution)** — The unique reason WHY your product works. The specific process, ingredient, technology, or approach that makes it different. Must directly address the cause the UMP revealed.

The UMP and UMS work as a pair:
- UMP reframes the problem so old solutions don't make sense
- UMS positions your product as the only thing addressing the real cause
- Without both, you're either explaining a problem with no solution, or pitching a solution to a problem they don't understand

**The Tier Hierarchy of Mechanism Information Power:**

| Tier | Type | What it does | Strength |
|------|------|-------------|----------|
| **1** | Reframe an observable problem | Takes something they already see/experience/know and gives it new meaning. Doesn't ask them to believe anything new — reframes what they already know is true. | Strongest |
| **2** | Explain why previous solutions failed | Shows why things they already tried didn't work. Validates experience, removes guilt, reveals gap only your product fills. | Strong |
| **3** | Introduce a new mechanism for a familiar problem | They know the problem but you introduce an entirely new way to solve it. Requires more persuasion because the information is new to them. | Moderate |
| **4** | Create awareness of a problem they didn't know existed | Starting from zero. Must convince them the problem exists before selling the solution. Highest resistance, most heavy lifting. | Weakest |

**The strongest mechanisms combine Tier 1 + Tier 2.** Reframe what they're experiencing AND explain why everything they tried didn't work. That combination makes your product feel like the only logical answer.

**If your mechanism isn't converting, check what tier you're operating at.** If Tier 3 or 4, try moving up to Tier 1 or 2.

**Mechanism checklist:**
- Have you looked at competitors' ads for their mechanism? If yours matches, your audience has already seen it.
- Does your copy have a clear UMP? A unique reason why the problem exists that they haven't heard?
- Does your copy have a clear UMS? A concrete explanation of how your product solves the cause the UMP identified?
- Are UMP and UMS connected? Does the solution directly address the cause?
- What tier are you at? Can you move up?
- Could a competitor copy-paste your mechanism into their ad? If yes, it's not unique enough.

### 4. New Avatars with the Same Problem

A new avatar means a fundamentally different group of people — not a tweak to the current one. Different life experiences, emotions, urgency, language, reasons for buying.

Sometimes the avatar you started with is already dominated by competitors with larger budgets and better creative. Your product serves many types of people. The one you started with might not be the one that converts.

**The question:** Who else has a problem this product solves? Who else has a desire this fulfills? What other situations make someone need this? What groups aren't yet being served by competitors?

**Avatar pivoting is the most effective way to find success when copy and desire changes haven't worked.** An underserved avatar + a product that solves their problem is the fastest path to scale. See [[avatar-segmentation]] for sub-avatar selection methodology.

### 5. New Problem / Product Performance

Most products solve more than one problem. If you've exhausted avatars and desires around one problem, build campaigns around an entirely different problem your product solves.

**Why this works:** Different problems bring different desires, different avatars, different language, different mechanisms, different urgency. You might be the first to position a product for a particular problem, which is a major advantage in desire testing.

**Examples of one product, multiple problems:**
- Posture corrector: back pain, neck tension, headaches from forward head posture, self-consciousness about slouching in photos
- Anti-snoring device: snoring, teeth grinding (jaw pain, cracked teeth, terrible sleep)
- Air purifier: mold, dust mites, pet odors (Clarifion builds entirely separate pages, landers, and ads for each)

**When you switch problems, everything changes.** Desires, avatars, language, mechanisms — all reset. This is a full restart, not a tweak.

**Action steps:**
1. List every problem your product could solve — not just the primary one. Secondary benefits, adjacent issues, problems people don't yet associate with your product.
2. Pick the problem with the most urgency and emotional weight — where people actively seek solutions and will spend money.
3. Fresh research from scratch. New problem = new avatars, new forums, new Reddit threads, new Facebook groups, new language. Don't recycle.
4. Build new avatars for this problem. Identify mass desires. Build new ads and test in a new CBO campaign.

---

## Moving On From a Product

There comes a point where switching products is the right move. But only after you can answer YES to all of these:

1. Landing page and offer replicate a proven competitor's as closely as possible (eliminating LP as a variable)?
2. Created ads that generated favorable CPMs and CPCs ($2 and below)?
3. Tested new copy + images after manual research that makes the avatar feel understood, using their own words?
4. Tested new desires that are instinctual, urgent, plain-language, and easy to understand (not overly specific, vague, or complicated)?
5. Tested at least 1 new avatar fundamentally different from every other avatar being targeted on Facebook, with urgent desires shared by millions?
6. Tested at least 1 new UMP/UMS combination not used by competitors?
7. Tested at least 1 new problem your product solves, with a new avatar, 3-5 mass desires, and a full desire-testing campaign around it?

If YES to all seven, move on. See [[product-research-criteria]] for selecting the next product.

---

## Key Principles

1. **Diagnose before testing.** Random changes waste money. Identify which checkpoint you're at, then fix the specific root cause.
2. **CPC is only a gate, not a metric.** It tells you if profitability is mathematically possible. Once past the gate, it's irrelevant.
3. **Desires must be human.** If a real person wouldn't say it to a friend, it's copywriting, not a desire.
4. **Mechanisms must be differentiated.** If competitors say the same thing, no amount of good copy fixes it.
5. **The tier hierarchy predicts mechanism power.** Reframing what they already see (Tier 1) beats introducing new concepts (Tier 3-4) every time.
6. **Avatar pivoting beats copy optimization** when you've exhausted leads, desires, and mechanisms for the current avatar.
7. **Problem pivoting is the final lever.** Same product, different problem = entirely different campaign. Different urgency, avatars, mechanisms, language. Often the most underused escalation step.
8. **Move on only after exhaustion.** Seven-question checklist must all be YES before switching products. Most people quit too early.
