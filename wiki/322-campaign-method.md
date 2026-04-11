# The 3-2-2 Campaign Method

> Sources: [[raw/2026-04-08-1-facebook-ads-strategy-philosophy-mp4.md]], [[raw/2026-04-08-4-how-to-set-up-a-3-2-2-campaign-ts.md]], [[raw/2026-04-08-9-when-to-turn-off-a-3-2-2-mp4.md]], [[raw/2026-04-08-10-when-to-leave-a-3-2-2-running-mp4.md]], [[raw/2026-04-08-11-why-you-should-never-turn-off-winning-ads-mp4.md]], [[raw/2026-04-08-5-set-up-raw-content-campaign-ts.md]], [[raw/2026-04-08-7-how-facebook-post-ids-will-help-you-scale-in-2025-full-tutorial-mp4.md]]
> Related: [[meta-ads-strategy]], [[creative-testing]], [[scaling-protocol]], [[ad-review-process]]
> Last updated: 2026-04-09

---

## Core Philosophy

One campaign. One scalable environment. Let Facebook decide what wins.

Every ad is tested in the arena — not a playground. No testing campaigns, no scaling campaigns, no audience segmentation campaigns. One CBO campaign handles prospecting, retargeting, and mid-funnel simultaneously. If an ad gets spend in this environment, it's a winner. If it doesn't, it's not. The machine is smarter than you at allocation.

The critical breakthrough: you do not have to waste spend. Ads that get spend in this campaign are proven winners 9 out of 10 times. Ads that don't get spend have been tested against your best and lost. Forcing spend on them via ABO campaigns has never produced a winner that outperformed the CBO campaign — tested across 60-70+ ads.

---

## Campaign Architecture

### One Acquisition Campaign (CBO)

- **Budget:** $100/day minimum, set at campaign level
- **Objective:** Sales → Website → Maximize number of conversions
- **Targeting:** Broad (age, gender, location only). No interests unless very early stage.
- **Placements:** Advantage+ (let Meta allocate)
- **Attribution:** 7-day click, 1-day view default. Switch to 7-day click only if view-through exceeds 50% of purchases (see [[scaling-protocol]])
- **Dynamic Creative:** OFF. Use manual ads instead. Flexible Ads (Meta's replacement) cannot be broken down by individual creative — you lose the ability to see which image/hook won.
- **Schedule:** Launch at midnight account time zone

### Ad Set Types (Inside the One Campaign)

**1. Creative Test Ad Sets (DCTs)**

Each DCT = one ad concept with three variations.

- 3 creatives (e.g., 3 different hooks or 3 different images)
- 2 pieces of copy
- 2 headlines
- All creatives within one DCT must be the SAME concept. Don't mix image ads with video ads or different angles in one ad set. Keep the test clean.

**2. Champions Ad Set**

One ad set containing all proven winners as post IDs.

- **Purpose 1: Benchmark.** New creatives must outspend the Champions at KPI to be considered winners.
- **Purpose 2: Consolidation.** Reduces active ad sets so Facebook can allocate budget properly.
- **Purpose 3: Persistence.** A winning ad that goes cold in its DCT still lives in Champions. If it comes back, you capture the spend.

Champions ads are never turned off. They work together — Facebook uses some for prospecting (low frequency, high spend) and others for retargeting (high frequency, lower spend). Turning off a "weak" Champions ad can collapse performance across the entire ad set because it was holding up the others.

---

## How the System Works Day-to-Day

### Testing New Creatives

1. Create a new DCT ad set inside the campaign
2. Three creatives, two copy, two headlines — all same concept
3. Let it run for **3 days minimum**
4. Day 1-3: Is it getting spend? Is spend increasing day over day?
5. If traction in first 3 days → extend to 7 days
6. If zero traction in first 3 days → don't extend to 7 days
7. After 7 days: evaluate. Getting majority spend at KPI = super winner. Getting some spend at good returns = winner. Not getting spend = turn off.

### When a Winner Emerges

1. Use breakdown tool to find best creative, best copy, best headline combination
2. Find the post ID (Facebook Post with Comments method — see below)
3. Drop the winning post ID into Champions ad set
4. Do NOT turn off the original DCT if it's still getting spend and performing
5. Both can run simultaneously — they work together

### When to Turn Off a DCT

- After 7+ days with no meaningful spend
- After 10 days maximum if it never took majority spend
- If it gets heavy spend but below-KPI performance for 3+ days (rare — happened twice across hundreds of DCTs)
- When launching a new DCT and need space (maximum active DCTs depends on budget)

### When to NEVER Turn Off

- A DCT that's getting spend and performing — even if it's not the top spender
- Any ad in the Champions ad set — they work as a team
- A DCT just because you dripped its winner into Champions

### Maximum Active Ad Sets by Budget

| Daily Budget | Max DCTs Active | Total Ad Sets |
|-------------|----------------|---------------|
| < $200/day | 1-2 DCTs | 2-3 (including Champions) |
| $500/day | ~5 DCTs | ~6 |
| $2,000/day | Many DCTs | Scale as needed |
| $10,000+/day | 10+ DCTs | As many as perform |

---

## Post IDs: Why and How

### Why Post IDs Matter

When you duplicate an ad, it starts from zero engagement. An ad with 1,000 likes, 200 comments, and 100 shares will stop the scroll better than the same ad with zero engagement. Post IDs let you carry all accumulated engagement into new ad sets.

Post IDs also help Facebook's algorithm: ads with engagement get preferred delivery because they keep users on the platform.

### How to Get a Post ID

**Method 1: Facebook Post with Comments**
1. Click into the DCT → select the winning ad
2. Click Preview → Share → Facebook Post with Comments
3. Facebook shows combinations ranked by engagement
4. Click the date under the page name → URL shows the post ID (string of numbers)
5. Copy that number

**Method 2: Page Posts Tool (Fallback)**
If Method 1 gives an invalid ID:
1. Copy the first line of ad copy text
2. Go to All Tools → Page Posts → search for that text
3. Match by engagement numbers (likes/comments/shares)
4. Copy the ID from there

### Using the Post ID

1. Go to Champions ad set → Create new ad
2. Ad Setup → Use Existing Post → Enter Post ID
3. Paste the number → confirm
4. Turn off all AI enhancements
5. Add UTMs

**Important:** Don't always grab the "best combination" from breakdown. Sometimes the ad with the most organic engagement (not the best breakdown metrics) performs better as a post ID. The engagement itself drives performance.

---

## Raw Content Campaign

A second campaign for testing unpolished UGC/creator content separately from high-intent ads.

**Why separate:**
- Raw content shouldn't compete against polished winners in the main campaign
- Learnings from raw content are different (finding winning creators, not refining messaging)
- Keeps the main campaign's learning data clean

**Structure:** Identical to the main 3-2-2 campaign (CBO, same targeting, same setup). No Champions ad set needed. If a creator's raw content wins here, hire them as a brand ambassador and create polished versions for the main campaign.

**What goes in:** Product seeding content, influencer clips, AI-generated ads, anything experimental.

---

## Key Rules

1. One ad set = one concept. Never mix concepts within an ad set.
2. Never force spend on ads that didn't get spend organically (ABO "rescue" campaigns don't work).
3. Turn off all Meta AI enhancements (Flexible Ads, AI music, relevant comments, etc.).
4. Always use UTMs for third-party tracking.
5. Schedule launches at midnight account time zone.
6. Name everything systematically — your future self and team need to read the data.
7. The only thing you should be focused on: getting more winning creatives into the campaign.
