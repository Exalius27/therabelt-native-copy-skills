# Scaling Protocol — KPIs, Attribution, and Budget Management

> Sources: [[raw/2026-04-08-1-how-to-set-targets-kpis-mp4.md]], [[raw/2026-04-08-3-how-to-scale-facebook-ads-up-down-mp4.md]], [[raw/2026-04-08-5-how-to-understand-facebook-ads-attribution-ts.md]], [[raw/2026-04-08-3-advanced-surf-scaling-method-ts.md]]
> Related: [[322-campaign-method]], [[meta-ads-strategy]], [[creative-testing]], [[funnel-economics]], [[ad-review-process]]
> Last updated: 2026-04-09

---

## Setting Targets and KPIs

### Breakeven ROAS

The first number you need: at what return on ad spend do you break even?

**Formula:**
1. Total price of product + shipping = Revenue per unit
2. Cost of product + shipping = COGS per unit
3. Gross profit margin = (Revenue - COGS) / Revenue
4. Breakeven ROAS = 1 / Gross profit margin

Example: $95 product, $35 COGS → 63% margin → breakeven ROAS = 1.59x

### Scaling ROAS

Your target for scaling = Breakeven ROAS + 1.0

Example: 1.59 breakeven → 2.59 scaling target

This gives ~25% gross profit margin from ads. Higher ROAS is possible but signals you should be spending more aggressively — you're leaving money on the table.

**The counterintuitive math:** Spending $10K at 4x ROAS = $16K profit. Spending $20K at 3.5x ROAS = $25K profit. Lower returns at higher scale = more total profit. As long as you're above scaling ROAS, push budget higher.

### Three KPI Levels

**Beginner (< $50K/month):** Blended ROAS only.
- Blended ROAS = Total Shopify revenue / Total ad spend
- Don't rely on in-platform attribution at low spend
- Simple and hard to game

**Intermediate:** Blended ROAS + In-platform ROAS.
- Look at both to understand attribution quality
- Especially important if you have organic revenue — blended alone can mask ad underperformance

**Advanced (> $50K/month):** New Customer CPA + LTV.
- Track cost to acquire NEW customers (NCPA)
- Compare against 3-month, 6-month, 12-month LTV
- Scale more aggressively when LTV covers CPA within acceptable payback period
- Requires tools like Triple Whale for accurate measurement

---

## The Scaling Decision Tree

Run through this every day.

### Step 1: Am I Hitting Target KPI?

**NO → Am I Below Breakeven?**

- **Yes, below breakeven + not at minimum daily spend:** Decrease budget by 20%
- **Yes, below breakeven + at minimum daily spend:** Do NOT decrease. Instead:
  1. Launch new DCTs
  2. Check funnel for bugs
  3. Analyze existing ads for patterns
  4. Do more research
  5. Push for more/better creatives

**NO → Not Below Breakeven but Not at Target**

- Have you waited 72 hours? Yes → decrease to minimum spend
- No → wait another 24 hours. Don't scale down reactively.

### Step 2: Am I Hitting Target KPI? (YES)

**Check: Have I had 72 hours of consistent above-target performance?**

- No → wait another 24 hours
- Yes → proceed to attribution check

**Check: Are 60%+ of purchases from click-based attribution?**

Compare 7-day click vs 1-day view in Ads Manager:
1. Columns → Compare Attribution Settings
2. Select 7-day click and 1-day view
3. Calculate: 7-day click purchases / total purchases

- If 60%+ from clicks → **increase budget by 20%**
- If < 60% from clicks → wait 24 hours or launch new ads that drive click-based data
- Exception: if 100% above target KPI (e.g., target is 2.5x and you're at 5x) → can double budget (aggressive, not recommended for most)

### Key Rules

- **Scaling down is harder to recover from than scaling up.** Wait 72 hours before reducing.
- **Scaling up requires 72 hours of proof.** Three consistent days above target.
- **Never scale on view-through heavy data.** It creates rollercoaster performance — great days followed by terrible days.

---

## Attribution: Click vs. View

### Why It Matters

Meta uses two attribution models:
- **7-day click:** Someone clicked your ad and purchased within 7 days
- **1-day view:** Someone SAW your ad (didn't click) and purchased within 24 hours

Click attribution is incremental — these people actively engaged with your ad. View attribution is often stolen credit — emails, organic, returning customers that Meta claims because they saw an ad recently.

### Common Causes of Heavy View-Through Attribution

1. **Email campaigns.** You send an email blast → people buy → Meta claims the sale because they saw an ad earlier that day
2. **Returning customers.** Repeat buyers purchase anyway, but Meta attributes the sale because they were shown an ad
3. **Strong organic presence.** Influencer mentions, PR, word of mouth drive sales that Meta claims

### When to Switch to 7-Day Click Only

- When 50%+ of purchases are from view-through
- When you're seeing rollercoaster performance (great day → terrible day → great day)
- When scaling produces inconsistent results

**Case study:** Brand spending $7K/month at reported 5.3x ROAS. Actual 7-day click ROAS: 2.2x. Switched to 7-day click only campaign → spent $24K at 3.1x ROAS on clicks. 3x the scale at higher actual returns by letting Meta optimize for click-based customers instead of view-through.

### How to Check

Ads Manager → Columns → Compare Attribution Settings → select 7-day click + 1-day view → look at purchases breakdown. If 7-day click purchases / total purchases < 50%, you have a view-through problem.

---

## Surf Scaling Method (Advanced — High-Volume Periods)

For sale events (Black Friday, major promotions) where buying intent is elevated and you want to maximize spend during peak periods while protecting returns.

### Core Concept

Instead of scaling once per day, scale every 2-6 hours based on real-time performance data.

### Scaling Frequency by Spend Level

| Daily Spend | Check/Scale Interval |
|------------|---------------------|
| $200-500/day | Every 6 hours |
| $1K-5K/day | Every 4 hours |
| $5K-20K/day | Every 2 hours |
| $20K+/day | Every 1-2 hours |

### The Process

1. Set your ad account time zone. All scaling decisions follow account time zone.
2. At each interval, record: Shopify revenue, Meta revenue, other channel spend, blended ROAS for that period.
3. **Performance good → double budget.** During peak periods with proven demand, aggressive scaling is warranted.
4. **Performance bad → reduce or hold.** Protect profits in slow periods.
5. **At day end (midnight account time zone): RESET budget.** If you scaled from $10K to $100K during the day, but only spent $60K — you must reduce budget before midnight or the next day will attempt to spend $100K from the start.

### Budget Reset Rule

Take actual spend for the day → halve it → set as starting budget for next day. If performance was exceptional, you can leave the budget as-is. Then scale back up during the next day's peak periods.

### Why It Works

You spend aggressively during high-conversion periods and pull back during low-conversion periods. Instead of a flat daily budget that overspends during slow hours and underspends during peak hours, you ride the wave — hence "surf scaling."
