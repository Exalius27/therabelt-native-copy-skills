# E-Commerce A/B Testing — Landing Pages, Intelligems, and Statistical Significance

> Sources: [[raw/2026-04-08-1-how-to-test-landing-pages-on-meta-ts-1.md]], [[raw/2026-04-08-2-how-to-analyze-landing-page-tests-on-meta-ts-1.md]], [[raw/2026-04-08-10-intelligems-template-test-ts-1.md]], [[raw/2026-04-08-14-intelligems-analyzing-split-tests-ts-1.md]], [[raw/2026-04-08-15-intelligems-understanding-powered-stat-sig-m4a-1.md]], [[raw/2026-04-08-16-intelligems-how-to-execute-winning-tests-ts-1.md]], [[raw/2026-04-08-1-page-deck-setting-up-foundations-ts.md]], [[raw/2026-04-08-10-page-deck-choosing-your-template-ts-1.md]], [[raw/2026-04-08-12-page-deck-writing-your-messaging-ts-1.md]], [[raw/2026-04-08-15-page-deck-optimizing-landing-page-content-2-ts-1.md]]
> Related: [[ecom-cro]], [[landing-page-architecture]], [[meta-ads-strategy]], [[desire-testing]], [[funnel-economics]], [[creative-testing]]
> Last updated: 2026-04-09

---

## Core Thesis

There are two ways to test landing pages: in the ad account (Meta ABO) and on-site (Intelligems). Ad-account testing gives you real scaling data faster because you don't need to wait for statistical significance — if the ad set with the new page scales profitably, it's working. On-site testing (Intelligems) gives you cleaner split-test data for product pages, homepage changes, and other Shopify templates. The best approach uses both: test new landing pages in Meta first, then use Intelligems for on-site optimization.

---

## Method 1: Landing Page Testing in Meta (Ad-Focused CRO)

### Setup

1. Create a **testing ABO campaign** (not CBO — you want to force spend on specific ad sets)
2. Take your top-performing ad (the one you're building the landing page for)
3. Rebuild the ad in the testing campaign (do NOT use the original post ID — it gives unfair advantage from existing engagement)
4. Change the destination URL to your new landing page
5. Change CTA from "Shop Now" to "Learn More" (landing pages are educational, not direct checkout)
6. Set budget to $50/day minimum — you need data fast, not a slow drip
7. Set ads to go live at midnight to avoid forced spending during the day
8. Set attribution to **7-day click only** (not 7-day click + 1-day view) — you want to measure people who clicked, visited the LP, and purchased. View-through attribution inflates results for LP tests

### The Critical Distinction: Click vs. View-Through Attribution

View-through purchases (someone saw the ad, didn't click, but bought later) are noise for landing page tests. You're testing whether the *page* converts — which requires the person to actually *visit* the page. Always check that purchases are from click data, not view-through.

Custom columns to set up:
- **Average ROI:** Purchase conversion value / purchases
- **Conversion Rate:** Purchases / landing page views

### Analyzing the Test

**Patience is required.** A real case study:

| Day | Spend | Purchases | Notes |
|-----|-------|-----------|-------|
| 1 | $50 | 0 | No purchase (but original ad doing $500/day at 3.87x ROAS) |
| 2 | $50 | 0 | Still nothing. $100 spent, zero results |
| 3 | $50 | 0 | $150 spent. Most people panic here |
| 4 | $50 | 3 | Breakthrough day — $381 conversion value |
| 5 | $50 | 0 | Back to zero. Discouraging |
| 6 | $50 | 2 | High AOV purchases — 4.8x ROAS |
| 7+ | $50-70 | 2-3/day | Consistent purchases begin |
| 10 | $200 | 6 | Budget scaled, conversion rate nearly 2x higher than original |

**Key insight:** Give landing page tests 5-7 days. The algorithm needs time to learn who to serve the new page to. Facebook crawls the destination URL — a new page requires learning time.

### The Scaling Protocol

When the landing page test starts performing above KPI:
1. If last 3 days are above target ROAS → increase budget by $50/day
2. If performance holds → increase by another $50/day
3. Continue scaling as long as performance holds
4. If you hit a plateau day, check if the original ad is also having a bad day (market fluctuation vs. page problem)

### When the Page Wins

Once the landing page version consistently outperforms:
1. Copy the post ID from the winning ad
2. Paste it into your main acquisition campaign (Champions ad set)
3. Now you have the same ad running with the better page, accumulating social proof
4. Scale the new version up, scale the old version down

**This is horizontal scaling.** Same ad creative, better page = more profit from existing creative. The case study generated $3.6K in extra sales just by launching the landing page test — pure incremental revenue.

---

## Method 2: On-Site Testing with Intelligems

Intelligems integrates directly with Shopify to split-test any template: homepage, product pages, collection pages, or custom pages.

### Template Tests (The Primary Test Type)

Template tests are the cleanest and most efficient type. They work by assigning visitors to different Shopify templates randomly.

**How it works with Shopify templates:**
- **Homepage:** Only one template (index.json) — no page targeting needed because only the homepage uses this template
- **Product pages:** Multiple products may share the same template (default product). If testing a shared template, add URL targeting to limit the test to specific products
- **Collection pages:** Same principle as product pages
- **Pages:** Custom landing pages — typically unique templates, so no targeting needed

**Key rule:** If a template is used by only one URL, no page targeting is needed. If a template is shared across multiple URLs, you must add URL-contains targeting to limit the test.

### Analyzing Split Test Data

**The 300-order minimum:** Intelligems recommends at minimum 300 orders per variant before analyzing results. Their built-in "statistical significance" indicator triggers at just 100 visitors, 10 orders, and $1 revenue — this is *far too early* to make decisions.

**Why patience matters — a real case:**

| Orders per Variant | What the Data Showed |
|-------------------|---------------------|
| ~100 | One variant appeared to be the clear winner (huge lift) |
| ~200 | The same variant now looked like a *loser* (test appeared insignificant) |
| ~300 | A different variant emerged as the actual winner (15% profit increase) |

The data completely flipped multiple times over the course of 300 orders. Making a decision at 100 orders would have been worse than random — you'd have pushed the *worst* variant live.

**The coin-flip analogy:** Flip a coin 10 times and you might get heads 8 times. That doesn't mean heads has an 80% probability. You need enough flips for the true probability to emerge. Same with split tests — small samples produce misleading results.

### The Core Four Quadrants

When analyzing test data with enough orders, filter by:
1. **Desktop vs. Mobile** — behavior differs dramatically between devices
2. **New vs. Returning** — new visitors respond differently to changes than returning buyers
3. **Combined filters** — desktop + new, mobile + returning, etc.

Each filter requires its own threshold of orders to be meaningful. If you only have 20 returning customer orders, that data is noise.

### The Trend Chart

The trend chart shows how test performance evolves over time. Watch for:
- Tests that start hot then cool down (regression to mean)
- Tests that start slow then accelerate (algorithm learning)
- Crisscrossing lines (not yet settled — let it run longer)
- Consistent separation (high confidence in a winner)

### Executing Winning Tests

Once a test reaches sufficient data and shows a clear winner:

**Theme test:** Publish the winning theme in Shopify. Done.

**Product page template:** Go to the product in Shopify, change the theme template to the winning variant. Save. Done.

**Collection page template:** Same as product page — change the template assignment.

**Custom page template:** Same as product/collection — change the template assignment.

**Homepage template:** This is the only complex one. You must copy the JSON code from the winning template and paste it into the index.json file. Always do this in a draft theme first, preview, verify, then apply to live. Keep a backup of the original index.json in a separate template file.

---

## PageDeck Landing Page System

PageDeck ($monthly, code EZA15 for 15%) is the tool for building landing pages outside of Shopify's native editor. Key advantages: unlimited pages, no traffic limits, Shopify integration via subdomain.

### Setup Essentials
1. Connect a subdomain (e.g., try.yourbrand.com) via CNAME record
2. Upload logo, set fonts (Google Fonts or custom .woff files)
3. Connect Google Analytics
4. Add head scripts: Meta pixel, Triple Whale, Heatmap.com
5. Add end-of-body scripts: Klaviyo, PostScript, email/SMS capture

### The Page Building Philosophy

**Research drives messaging, not templates.** Choose a template that matches your angle's structure (founder story, comparison, education). Don't force sections that don't fit. The content and copy should come directly from the research document — every claim, every benefit, every review should be grounded in research.

**Landing page messaging principles from the PageDeck process:**

1. **Lead with the angle from research.** If research showed the founder's digestive issues story resonates, lead with that. If research showed price comparison resonates, lead with that. The angle is not arbitrary.

2. **Reviews do the selling.** 75% of surveyed customers say reviews are the most important factor in their purchasing decision. Choose reviews that are relevant to the page's angle. Bold the key phrases. Show photos when available. Order reviews strategically — the first review should be the most powerful.

3. **Show, don't tell.** Use GIFs/video clips showing the product in action rather than static feature descriptions. Example: Converting a video of fresh ingredients being cut and blended into soup into a GIF to show "real food" — more powerful than any copy.

4. **Imagery must emphasize the messaging.** Every image should reinforce what the copy is saying. "Real food" section = photo of fresh ingredients. "Zero added sugar" = photo showing natural fruits. Consistency across sections builds trust.

5. **Ugly pages that are well-researched outperform beautiful pages with weak messaging.** Design is secondary to information architecture and message-market match. The depth of research behind the page determines conversion — not the visual polish.

6. **Authenticity is mandatory.** Founder story pages only work if the story is real. If you started the business just to make money and don't have a genuine story, don't force it. Lean into customer understanding instead.

**Connection:** The page building process implements [[landing-page-architecture]] sections using research from [[ecom-research-methodology]] and [[copy-research]]. Testing then validates through the methods described above.

---

## Ad-Focused CRO vs. Traditional CRO

The Evolve approach favors ad-focused CRO over traditional on-site split testing for landing pages:

| Traditional CRO | Ad-Focused CRO |
|----------------|----------------|
| Wait for 300+ orders per variant | Scale profitable ad sets immediately |
| Optimize Shopify store conversion rate | Optimize for total revenue and scaling capacity |
| Statistical significance required | Performance at scale is the evidence |
| Weeks or months to get results | Days to see directional signal |
| Tests in isolation from ads | Tests in the context of actual ad performance |

The reason: If a landing page produces a lower CPA and higher ROAS at increasing spend levels in Meta, it's working — regardless of what a split testing calculator says. Real scaling is the ultimate test.

Use Intelligems for on-site elements (homepage, product pages, checkout flow) where you can't easily isolate with Meta ad sets. Use Meta ABO testing for new landing pages where you can measure the full ad-to-purchase journey.
