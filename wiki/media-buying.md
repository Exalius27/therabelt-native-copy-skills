# Media Buying

Meta ads account management, scaling strategies, and campaign structure for e-commerce brands.

> Sources: [[raw/2026-04-08-12-media-buying-01-intro.md]]
> Related: [[rmbc-ii-funnel-structure]], [[rmbc-ii-advertorials-and-pdps]], [[vicious-hooks]], [[advertorial-headlines]]
> Last updated: 2026-04-08

---

## Principle 1: Don't React to Short-Term Performance Fluctuations

Even six-figure brands ($115K-$130K/month, 3.5x blended ROAS) have wild daily swings — $2.7K one day, $6.2K the next. This is normal, not a problem to fix.

**The damage cycle:**
1. Launch campaign. First 2-3 days perform well.
2. Day 4-5 dips. Panic starts.
3. You change landing page, pause campaigns, launch email marketing, adjust offers.
4. Constantly changing inputs = never getting consistent outputs.

**The rule:** Evaluate on 7-day windows minimum. Never react to 1-2 days of bad performance.

**Why it works — regression to the mean:** Daily revenue fluctuates around a mean. Outlier days (high or low) naturally regress toward the average. If your 7-day average is profitable, individual bad days are statistical noise.

**What you can do on bad days:** Lower budgets if you must. But do NOT change the composition of your ad account or the structure of your landing pages.

**When to actually investigate:** 3+ consecutive days of bad performance — that's enough to drag your weekly average down and warrants looking at root causes.

**The weight loss analogy:** If you eat in a caloric deficit, some days the scale goes up anyway. Panic → more cardio → fewer calories → lose muscle → feel fatigued → abandon goal. Same pattern in media buying. Trust the process over short time horizons.

---

## Principle 2: Angle Testing Is the #1 Scaling Lever

A fresh angle — not a minor copy tweak, not a new headline, not a design change — is the single biggest driver of scaling breakthroughs. Confirmed by multiple practitioners:

- **Brandon Ham:** "Every campaign I've seen scale fast (2x, 5x, 10x spend in a week) has one thing in common — a brand new angle." Anti-aging offer went from $0 to $40K/day within days on a new angle.
- **Eden Lucina:** Scaling to $60K/day. "You can take any product from zero to $10K/day easily, as long as the angle is fresh." Testing as many different angles as possible is the core strategy.

**What "new angle" means:** Not a headline variation. A completely new frame for the product.

Example: Same cat hydration product.
- Old angle: Personal story advertorial ("My cat Max was dying and it was my fault")
- New angle: Veterinarian perspective advertorial ("This is why 81% of cats are dying 5 years too soon")

Same desire, same product, completely different frame.

**Where to test angles:** For brands that respond well to advertorials, test angles at the advertorial level (not just ad creative level). Duplicate your best-performing ads and send traffic to a completely new advertorial with a different frame.

**Corroborate before committing:** When one person says something works, always find at least one other practitioner with results saying the same thing. Be careful taking advice from brands with massive organic presence — they can make anything work in an ad account because of brand lift, not because of strategy.

---

## Principle 3: Advertorial Optimization (Angle Execution)

When creating a new angle advertorial, two optimizations produced the biggest performance gains:

### A. Delay the mechanism reveal

**Bad:** Revealing the core concept in the lead. "I'm talking about something called silent dehydration." — Now the reader knows the premise. No reason to keep reading.

**Good:** Paint the picture of an invisible threat without naming it. "The very thing you trust to keep them healthy is actually poisoning them slowly. Something most vets miss completely." — Reader has to keep scrolling to find out what it is.

**The movie analogy:** If your friend tells you how the movie ends after 2 minutes, you're not going to watch the rest. Same with advertorials. The curiosity driver IS the reason people keep reading.

### B. Subheadlines must tell the full story for skimmers

Instruct the copy to create subheadlines that, if someone only read the subheadlines and nothing else, they would understand the entire premise.

**Bad subheadlines (vague):**
- A $3,200 Emergency Vet Visit Changed Everything
- Why Max Started Drinking Five Times More Water

**Good subheadlines (story-telling):**
- Your Tap Water Contains 80 Deadly Chemicals
- Cats Dehydrate By Avoiding Their Water Bowl
- Pet Companies Know This Secret and Hide It
- Veterinarian Hospitals Use Different Water
- The Only Fountain That Uses Hospital Technology
- 19 Out of 20 Cats Show Kidney Improvement

This is [[direct-response-copywriting]]'s "double readership path" principle applied to advertorials: impulsive readers (skimmers) and analytical readers (full text) both get the full argument.

---

## Principle 4: New Accounts Need Interest-Based Targeting

Open targeting and Advantage+ don't work for new or small ad accounts. This is confirmed by $60M+ in managed ad spend.

**Why open targeting fails for new accounts:**
- Meta's AI recommendations are built for enterprise brands with seasoned accounts, mature pixels (50+ sales/week), and $1K+/day budgets
- New ad accounts get banned for minor issues while established accounts violate policies freely — Meta rewards big spenders
- Even when you add specific interests in Advantage+, Facebook's AI ignores them and does whatever it wants

**The strategy that works for new/small accounts:**
1. Use interest-based targeting adjacent to your product (dog products → dog-related interests, popular dog brand audiences)
2. **One interest per ad set. Never stack.** Multiple interests in one ad set confuse the algorithm and kill your ability to identify what works
3. Each interest gets its own ad set so you can: see what works, scale winners independently, kill losers without affecting performers

**When to switch to Advantage+:** Once you're at $1K+/day with consistent conversions and 50+ weekly sales. At that point, the AI has enough data to actually optimize.

**Meta's conflict of interest:** Meta pushes Advantage+ hard on new advertisers because it serves Meta's learning algorithm, not your ROAS. The algorithm knows interest-based targeting performs better for small budgets — an experiment showed zero spend allocated to Advantage+ or open targeting ad sets when run alongside interest-based ad sets.

---

## Principle 5: Hook Testing as Isolated Variable Testing

A systematic method for finding winning desires and angles before investing in full creative production.

**The method:**
1. Get an LLM to generate 20-30 different hooks/angles/headlines
2. Place each on a white background using Canva (text only, no visual)
3. Put each in its own ad set in an ABO campaign at ~$3 spend each
4. After each ad spends ~$3, identify highest CTR hooks
5. Create matching visuals only for the CTR winners

**Why this works:** Isolates the text element. You already know the hook is validated before spending on visual production. Most efficient way to test many desires/angles at once.

**Cadence:** Run hook tests weekly to continuously discover new angles. Dramatically increases creative hit rate.

---

## Principle 6: Cost Cap Scaling Campaign Structure

A scaling setup for moving from testing to consistent $2-3K+/day performance. Sourced from Brandon Fink and Marin Istvanic.

**Structure:**
- 1x CBO Campaign
- 1x Ad Set, Broad Targeting, 1-Day Click only attribution window
- Cost Cap = Target CPA
- All best-performing post IDs loaded in

**The workflow:**
1. Continue all testing in your highest-volume testing campaigns (ABO)
2. When ads win in testing, move winning post IDs into the cost cap scaling campaign
3. Don't try to scale directly in the testing CBO

**Why it works:** Cost caps force Meta to find conversions at your target CPA or not spend. Combined with broad targeting and proven creative, this creates a controlled scaling environment.

---

## Meta Ad Policy Reference

The source file includes Meta's complete 2025 Advertising Standards (142 pages compiled from Meta's website). Key compliance areas for e-commerce:

**Health & Wellness (critical for TheraBelt):**
- No negative self-perception messaging to promote health products
- No before/after side-by-side comparisons for anti-aging treatments (Botox, dermal fillers, anti-aging)
- Skin anti-aging products CAN show zoomed-in images and highlight specific skin areas, but must reflect realistic outcomes over time and cannot use side-by-side comparisons
- Health/weight loss products must target 18+
- No claims to cure incurable diseases (exhaustive list includes cancer, Alzheimer's, Parkinson's, etc.)
- No promising specific health results in specific timeframes without disclaimers

**Personal Attributes (critical for targeted copy):**
- Cannot assert or imply personal attributes: age, health conditions, disability, financial status
- Cannot imply you know someone's medical information
- CAN use "you/your" language without a personal attribute
- CAN make passing reference to age groups or ranges

**Circumventing Systems:**
- No cloaking (different landing page shown to Meta vs. users)
- No unicode tricks to obfuscate words
- No obscured images to bypass review

**Pro tip from practitioner:** Feed your ad copy + the full policy document to an LLM to flag high-risk sections before submitting. Especially useful for aggressive angles on fresh accounts.

---

## Pain Before Desire — Why Ads Convert

Schwartz: "You can't create desire, only channel it." But desire is just pain looking for relief.

Nobody "desires" a product. They feel the pain of a current reality and want it to stop.

**The formula:**
1. Identify the NOW pain (not future fear — current reality)
2. Make them FEEL it consciously (agitation works because you're making existing pain conscious, not creating problems)
3. Position product as pain relief

**Same ad, different results:**
- Confident person sees posture ad = scrolls past
- Person who just saw themselves slouching in a photo = instant click
- Same product, same ad, different NOW pain = different result

**Common NOW pains that convert:** Looking tired/aging, being ignored/insignificant, feeling stuck/life passing by, being disrespected/powerless, feeling left behind.

This connects to [[persuasion]] (agitation as conscious pain surfacing) and [[vicious-hooks]] (hooks that activate NOW pain).
