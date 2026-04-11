# RMBC II: AI-Powered Copy Generation System

The acceleration engine of RMBC II. Using Claude projects and a copy-chief methodology, practitioners generate high-quality copy across all funnel stages—VSLs, advertorials, ads, product pages, email sequences—in a fraction of traditional time.

## The Paradigm Shift: Copy Thinker vs. Copywriter

**Old paradigm (RMBC I):** You're a copywriter. You write copy. Takes 1-2 weeks for a good VSL.

**New paradigm (RMBC II):** You're a copy thinker and copy chief. AI writes. You think, direct, and refine. Takes 2-6 hours for a polished VSL.

This isn't laziness. It's leverage. You provide strategic direction; Claude executes.

## The Copy Generation Workflow

### Phase 1: Prep
- Unified research document ✓
- Brief 2.0 ✓
- Mechanism selected ✓

### Phase 2: Structure & Outline
**Input to Claude project:**
> "Using this brief, create a [VSL length] outline. Include these sections: [Hook, Lead-in, Story, Mechanism reveal, Proof, Objection handling, Offer, CTA]. Output as detailed outline with talking points for each section."

**Claude outputs:** Detailed structure showing flow, talking points, and story beats.

**Your job:** Review outline. Feedback:
- "Hook is too soft. Research shows this audience responds to contrast. Reframe as a contradiction."
- "Story doesn't have enough tension. Add the moment of desperation before discovery."
- "This section buries the mechanism. Lead with it."

### Phase 3: Full Copy Generation
**Input to Claude project:**
> "Using this outline, write the complete [format] in conversational voice. The tone should be [friendly/authoritative/urgent]. Remember: This will be read aloud, so use short sentences and natural pacing."

**Claude outputs:** Full draft.

**Your job:** Review for:
- Clarity (is it instantly understandable?)
- Pacing (does it move the reader through curiosity → desire → action?)
- Authenticity (does it sound real or salesy?)
- Mechanism clarity (is the WHY crystal clear?)

### Phase 4: Iterative Refinement
**Typical feedback loops:**
- "This reason-why is buried in a long sentence. Extract it as its own statement."
- "Objection handling feels defensive. Reframe as confidently explaining why this is different."
- "The offer feels like an afterthought. It should feel like relief—the solution to everything you just described."
- "Add more specific results language. Research shows customers want day-by-day progress, not generic transformation."

Each round takes 5-10 minutes. Total polish time: 1-2 hours for most pieces.

---

## Copy Type: Video Sales Letters (VSLs)

### What is a VSL?

A long-form video (6-50 minutes) that follows a narrative arc:
1. **Hook** (0-10 seconds) — Grab attention with contrast, curiosity, or recognition
2. **Lead-in** (10 seconds - 2 minutes) — Establish relatability and set up the problem
3. **Story** (2-5 minutes) — Hero's journey: problem → search → breakthrough
4. **Mechanism reveal** (5-10 minutes) — Deep explanation of WHY it works
5. **Social proof & credibility** (10-15 minutes) — Testimonials, studies, results
6. **Objection handling** (15-20 minutes) — Address hesitations
7. **Offer & scarcity** (20-22 minutes) — Price, options, guarantee, urgency
8. **CTA** (22-24 minutes) — Clear call to action

**Modern reality:** Classic 20-50 minute VSLs rare now. More common:
- **Medium VSL** (6-18 minutes) — Full story + mechanism + offer on video
- **ADHD-hook VSL** (3-7 minutes) — Heavy hook + quick story + fast mechanism reveal + offer
- **In-feed VSL** (1-3 minutes) — Hook + teaser of mechanism + CTA to landing page

### VSL Generation Process

**Step 1: Set length expectation**
> "Create a 12-minute VSL outline where the mechanism reveal is the turning point (at 6 minutes). The hook should be jarring contrast. Use the hero story to build to a climax before the mechanism reveal."

**Step 2: Review outline for structure**
- Does hook feel like it will stop scroll?
- Is there narrative tension?
- Is mechanism reveal positioned as the answer to all prior tension?

**Step 3: Generate full script**
> "Write the 12-minute VSL script. Remember: This is spoken word, not written. Use short sentences. Use conversational language. Pause for effect where appropriate [indicated as ...]. Keep sentences under 15 words when possible."

**Step 4: Refine for delivery**
- Tighten sentences for pacing
- Mark pauses and tone shifts
- Test read aloud (you'll spot awkwardness when spoken)

### VSL-Specific Claude Project Setup

Claude projects should have system instruction like:
```
You are a expert VSL copywriter trained in direct response marketing. Your job is to write video sales letter scripts based on briefs. 

Rules:
- Use short, conversational sentences (mostly under 15 words)
- Create narrative tension that builds to a mechanism reveal
- Include specific results and social proof
- Make objection handling feel like confident explanation, not defensive
- Pacing should feel natural when read aloud
- Use [PAUSE] to indicate breath moments
```

---

## Copy Type: Advertorials

### What is an Advertorial?

Long-form copy disguised as editorial/article. Maintains congruence with native ads and reads like journalism, not sales.

**Short advertorial** (200-500 words) — Teaser that leads to VSL or product page.
**Long advertorial** (1500-3000 words) — Full sales argument that can lead directly to checkout.

### The Syntax Principle

**Structure matters more than content niche.** An ED advertorial's structure works for floral arrangements. The LLM extracts the arrangement of elements (hook → problem → education → solution → proof → CTA), not the subject matter. Your swipe file should be **diverse across categories**, not niche-specific. Niche-only swipe files cause the LLM to copy surface patterns instead of extracting architecture.

### Claude Project Setup for Advertorials

**Project instructions:** "I will be giving you sales pages, landing pages, or product details, and you will write new advertorials based off the examples in your knowledge base. Analyze the structure of the advertorial examples, synthesize that knowledge, and use your judgment to produce new advertorials."

**Knowledge base:** Upload 8-15 advertorial examples as PDFs across short, medium, and long formats. Include diverse niches. Save screenshots alongside links (originals go down frequently).

### 3-Step Prompt Workflow

**Step 1 — Analyze + Hooks:** "Here is the landing page copy for a [product type]. Please analyze it, and give me 10 potential hooks for advertorials we could write."

**Step 2 — Outline:** "Let's do hook number [X]. Write an outline for a [length] advertorial with that angle. Do not reveal the product's price."

**Step 3 — Write + Iterate:** "Perfect. Write this advertorial now." Then iterate: request shorter versions ("50% shorter, retain main structure"), fix specific issues (claims, guarantee details, congruence gaps), adjust tone.

### Editing: The Dissociative State

After generation, read the draft as a skeptical consumer, not as the requester. Ask: "Would I have an objection here?" Any logical gap (why would a plant researcher test compounds on acne?) needs a narrative bridge (his own sons had acne). This congruence within the story separates output that converts from output that just reads well.

**Key difference from VSL:** 
- Advertorials show rather than tell
- They build belief through case stories and research
- The product introduction feels natural, not pushy
- Flow is article-like: headline → hook → problem exploration → solution reveal → proof → offer

### Platform Considerations

**Native ads feed into advertorials** → The tone must maintain congruence.

If your native ad says "Scientists discover...", your advertorial should expand that scientific angle, not pivot to customer testimonials.

---

## Copy Type: Meta Ads

### Short Video Ads (15-60 seconds)

**RMBC II approach:** Meta ads are often VSL-format in miniature, or hook-heavy video ads that lead somewhere else.

**Generation process:**
> "Create 3 hook-heavy video ad scripts for Meta. Each should be 30 seconds. Hook should be jarring/contrasting. Lead with the mechanism name or a curiosity-opening question. CTA should be clear (either 'Watch the full story' or 'Tap to see how'). These will drive to either a VSL or advertorial landing page."

**Key for Meta:** Heavy hook (first 3 seconds = everything), quick mechanism tease, clear CTA.

### Static Image Ads

Text overlay + image. Copy should be minimal, curiosity-driven.

> "Create 5 static ad copy variations. Each should be 8-12 words maximum. They should tease the mechanism or a surprising benefit. Examples: 'This 30-second ritual stops bloating instantly.' 'The one thing doctors don't tell you about aging.' Format as single headline for image overlay."

---

## Copy Type: Product Pages (PDPs)

### Short Product Pages (1-2 sections)
For solution-aware or product-aware markets. Minimal sell needed.

Structure:
- Product name/hero image
- 2-3 bullet benefits
- Pricing + options
- 3-5 FAQ
- Guarantee
- Checkout

### Long Product Pages (5-10 sections)
For problem-aware markets. Full persuasion needed.

Structure:
- Hero section + hook
- Problem deep-dive
- Mechanism explanation
- Social proof/testimonials
- Results/future-pacing
- Objection handling section
- Offer comparison (if multiple tiers)
- FAQ
- Final CTA + guarantee

**Generation process:**
> "Create a long product page structure for [product]. Market awareness level: [problem-aware]. Include: hero section hook, problem deep-dive (3 paragraphs), mechanism explanation (2 sections), 5 customer testimonials, results section with timeline, FAQ with 8 questions, and offer section showing pricing and guarantee. This should read like a persuasive sales page, not a typical product page."

---

## Copy Type: Email Sequences

### Abandoned Cart Emails

**Email 1 (immediate):** "Did you forget something?"
- Brief reminder of what they added
- Quick reason-why (mechanism)
- Soft CTA back to checkout

**Email 2 (12-24 hours):** Social proof angle
- Customer testimonial/results
- Urgency element (limited stock)
- CTA

**Email 3 (48 hours):** Final push
- Discount or bonus offer
- Last-chance messaging
- CTA

**Generation process:**
> "Create a 3-email abandoned cart sequence for [product]. Email 1 should be reminder-focused and brief. Email 2 should feature a specific customer result and create scarcity. Email 3 should introduce a time-limited incentive. Keep each email to 150 words max. Use casual tone."

### Welcome Sequences

**Email 1:** Thank you + set expectations
**Email 2:** Deliver value (tips, insights, how-to)
**Email 3:** Share deeper benefit
**Email 4:** Build anticipation for next offer/sequence

**Generation process:**
> "Create a 4-email welcome sequence for customers who just purchased [product]. Email 1: thank you + what to expect. Email 2: a 'quick start' tip to see results immediately. Email 3: deeper mechanism education. Email 4: prime for upsell (hint at additional offer coming). Tone: helpful, expert, not pushy."

### Promotional / Flash Sale Sequences

**Email 1:** Announce sale + reason (limited supply, deadline)
**Email 2:** Showcase most popular option
**Email 3:** Final push before deadline

### Reorder / Winback Sequences

**Reorder:** "Time to reorder? Here's 20% off your next order."
**Winback:** "We miss you. Here's what's changed since you last ordered..."

---

## Speed Benchmarks (RMBC II Claims)

With brief prepared and research done:

| Copy Type | Est. Time | Output Quality |
|-----------|-----------|-----------------|
| VSL (12 min, outline + copy + polish) | 2-4 hours | Near-final draft |
| Advertorial (2000 words) | 1-2 hours | Near-final draft |
| Email sequence (3-4 emails) | 20-30 min | Final |
| Meta ad (3-5 variations) | 15-20 min | Final |
| Product page (long) | 1-2 hours | Near-final |
| Upsell (brief, copy, polish) | 15-30 min | Final |

*Starting out* takes longer (5 hours for VSL). *Experienced practitioners* hit these benchmarks.

---

## The Copy Chief Iteration Process

**You're not editing copy.** You're **directing** copy.

**Bad feedback:** "This paragraph is awkward."
**Good feedback:** "Research shows this audience is skeptical of instant results. Reframe this as cumulative effect with day-by-day progress."

**Bad feedback:** "Make it more conversational."
**Good feedback:** "This mechanism explanation feels clinical. Use the metaphor from the brief—compare it to how a car engine works. Make it relatable."

**Pattern:** Reference research or strategy when giving feedback, not just aesthetic preference.

---

## Common Mistakes in AI Copy Generation

**Skipping the outline phase.** Outline saves time. Bad outline = bad copy. Invest in structure first.

**Vague instructions to Claude.** "Write better copy" generates mediocrity. "Reframe this objection using the 'cumulative effect' angle from research" generates specificity.

**Not aloud-testing VSL scripts.** You'll catch pacing issues, awkward phrases, and timing problems. Read every VSL aloud before finalization.

**Letting AI own the voice.** Your direction shapes voice. Claude is a tool. You're the voice.

**Not referencing research in feedback.** "I don't like this" is useless. "Research shows customers respond to contrast, not agreement. Reframe this as a surprising contradiction" is actionable.

---

## Integration with RMBC II System

**Inputs:**
- Brief 2.0 ✓
- Unified research document ✓
- Mechanism decision ✓
- Platform context (is this for Meta, native, YouTube?)

**Process:**
- Set structure (outline)
- Generate copy (full draft)
- Iterate (feedback loops)
- Polish (final tweaks)

**Output:**
- Ready-to-use copy across all funnel stages
- Tested hooks and angles
- Variations for split testing

---

## Claude Projects Structure

Recommended Claude project configuration:

1. **System instruction** (brand voice, constraints, methodology)
2. **Example outputs** (show what "good" looks like)
3. **Reusable prompts** (templates for different copy types)
4. **Research document** (always available in context)
5. **Brief template** (fill-in-the-blank format)

---

## ADHD Super Hook Ads: AI-Powered Hook Generation (Georgi, RMBC II Session 9)

The most effective Meta ad format in 2025: 3-7 minute videos with dozens of hooks stacked throughout, constant visual pattern interrupts, multiple speakers/UGC clips, and repetitive commands ("watch this," "listen to this," "stop scrolling"). Named "ADHD super hook ads" because they're constant dopamine machines — curiosity + different visuals + brain stimulation. Used by vShred, Svelte, and Emma Relief.

**How they differ from regular ads:** Regular ads have 1-2 hooks at the start, then "give up" and go into a standard script. ADHD super hook ads maintain hook density throughout the entire video, especially dense in the first 30 seconds (5-10 hooks stacked).

### Hook Generation Process (Multi-LLM)

**Step 1: Deep research for initial hooks.** Run the same prompt across Perplexity, Grok, Gemini, and ChatGPT deep research. Ask for "as many hook-driven questions, statements, and curiosity fragments as possible" for your niche/audience. Include general pain points and audience demographics. Perplexity consistently produces the best initial hooks.

**Step 2: Compile hook database.** Create a Google Doc (or similar). Go through all LLM outputs and copy-paste the hooks you like into one document. This becomes your hook database — a living document you keep adding to.

**Step 3: Generate more hooks from existing hooks.** Feed your compiled hooks back into LLMs with this critical instruction: "These are fragments and snippets, NOT fascinations or curiosity bullets. Don't close the loop. Imagine hooks injected throughout ads with multiple speakers — one might say 'This is how often you should really be washing your face,' then another says 'What about sunscreen?' They're the first half of a puzzle, not the completed puzzle." Gemini 2.5 Pro and GPT-4o1 Pro were best for this expansion step.

**Step 4: Iterate.** Keep saying "give me 100 more." Add winners to the database. The database compounds over time.

### Claude Project Setup for Hook-Heavy Ads

**Project knowledge:**
1. **Ad breakdowns** — Annotated swipe files of winning ADHD super hook ads (line-by-line: who's speaking, what's on screen, what hook is being used)
2. **Hook database** — Your compiled list of hooks and curiosity-driven statements
3. **First half of VSL only** — Critical: do NOT upload the product/close section. If the LLM sees product names, ingredients, and pricing, it will want to mention the product in the ad. Upload only through the mechanism section.

**Project instructions include:**
- "Write hook-heavy meta ads following the ADHD super hook framework"
- "Unless I specifically ask, do NOT mention the product in the ad. Tease a breakthrough solution/ritual. Sell the click."
- "First 30 seconds should have numerous hooks jumping around between speakers"
- "Incorporate curiosity-driven statements throughout, not just at the opening"
- "Include commands like 'watch this,' 'you need to hear this,' 'stop scrolling'"

**Workflow:** Ask for 10 ad concepts with hooks listed for first 30 seconds → Choose favorites → Have Claude write full 1-3 minute scripts → Edit for transitions and flow → Test.

### Hook Testing Methodology (Tamir/vShred, confirmed by Georgi)

Don't jam 10 untested hooks together. The winning approach:
1. Test individual hooks as standalone openers
2. Identify winners by performance data
3. Stack proven winners together gradually — add one new hook at a time to a winning combination
4. Each hook in a final winning ad should have been individually validated first
5. Two winners stacked together will probably outperform either alone

See also [[vicious-hooks]] for hook psychology and quality standards, [[meta-ads-strategy]] for hook isolation testing.

---

## Sources

- Stefan Georgi, RMBC II — "Copy: Part 2" — Full VSL, advertorial, PDP generation workflows
- Stefan Georgi, RMBC II — "Using AI to Generate Endless Good Hooks" — ADHD super hook ad format, multi-LLM hook generation process, Claude project setup, hook testing methodology
- Stefan Georgi, RMBC II — "2. VSL Leads" — Advanced VSL frameworks
- Stefan Georgi, RMBC II — "Advertorial Overview + Meta Example" — Advertorial-specific training

## Related

[[rmbc-ii-brief]] — The strategic document that feeds all copy generation
[[rmbc-ii-vsl-architecture]] — Deep VSL structure and psychology
[[rmbc-ii-research-methodology]] — Research that informs all feedback
[[rmbc-ii-system]] — Overview of complete system
[[direct-response-copywriting]] — Traditional DR copywriting foundations
[[creative-testing]] — Feedback loops for ad testing and iteration

## Last Updated

2026-04-07
