---
name: reddit-researcher
description: Use when someone asks to research a subreddit, extract pain points from Reddit, analyze Reddit posts, find voice-of-customer language on Reddit, or study storytelling/hooks from Reddit posts.
argument-hint: "[subreddit] [research goal]"
disable-model-invocation: true
---

## What This Skill Does

Researches Reddit subreddits to extract real data from actual posts and comments. Returns a structured report with real quotes and findings based on your research goal. Uses the Reddit MCP server tools.

## Steps

### 1. Parse Input

Extract the **subreddit** and **research goal** from `$ARGUMENTS`.

- Subreddit can be written as `r/Name` or just `Name`
- Research goal is everything after the subreddit name

If either is missing, ask before proceeding. Do not assume.

### 2. Detect Mode

Determine which mode to operate in based on the research goal:

- **Customer Research mode** — the goal is about extracting pain points, emotional language, voice-of-customer data, what people complain about, what they've tried, how they describe their problems. Keywords: "pain points," "language," "extract," "what people say," "voice of customer," "complaints."
- **Craft Study mode** — the goal is about learning storytelling principles, analyzing what makes stories work, studying hooks, understanding narrative structure. Keywords: "storytelling," "hooks," "what makes these work," "analyze stories," "craft," "principles," "learn from."

If unclear, ask the user which mode they want.

### 3. Gather Posts

Use the MCP Reddit tools to pull posts from the target subreddit.

- Start with `browse_subreddit` to get top posts
- If the research goal is specific, also use `search_subreddit` with relevant keywords to find targeted posts
- Adjust the time filter based on the goal. Pain points and emotional language: `month` or `year` for more data. Trending topics: `week` or `day`.

**Customer Research mode:** Browse 5-7 posts. If the research goal is specific, also search with targeted keywords for another 5-7. From the combined results, select the 3 most relevant for deep reading. Selection criteria: title signals personal experience or specific behavior matching the research goal. High comment count is a tiebreaker, not the primary filter.

**Craft Study mode:** Pull 15-25 posts but you'll only deep-read the best ones. Sort by `top` to surface the most engaging stories.

### 4. Read Individual Posts

Use `read_post` on the most relevant posts from Step 3.

**Customer Research mode:**
- Read exactly 3 posts — the ones selected in Step 3
- Read the full post body and top 3 comments only. Stop after 3 comments — do not read the full thread. The `read_post` tool returns everything, but you only analyze the first 3 comments.
- Prioritize posts where the title signals personal experience or specific behavior matching the research goal

**Craft Study mode:**
- Read 5-8 of the highest-performing posts (highest score + comment count)
- Read deeply — full post body AND comments. The comments tell you what landed with readers and what they responded to
- Pay attention to which parts of the story triggered the most emotional responses in the comments

### 5. Analyze and Extract

Go through everything you read and extract based on the mode.

Read `reference.md` for the full extraction checklists for each mode (what to look for in Customer Research vs Craft Study).

### 6. Build the Report

Read `reference.md` for the report templates for each mode (Customer Research and Craft Study).

## Guardrails

- **Never fabricate quotes.** Every quote in the report must come directly from a post or comment you actually read. If you don't have enough data, say so.
- **Never paraphrase into marketing speak.** The value is in the raw, unfiltered language. Report it as-is.
- **Flag empty results.** If the subreddit is small, the topic has few posts, or Reddit returns errors, tell the user rather than padding the report.
- **Craft study is about depth, not volume.** Fewer posts analyzed well beats many posts skimmed.
- **Customer Research volume caps are hard limits.** Never exceed: 7 posts browsed, 7 posts searched, 3 posts deep-read, 3 comments analyzed per post. These limits exist to control token cost.

## Notes

- The Reddit MCP server must be running. It's configured in `.mcp.json` at the project root.
- MCP tools available: `browse_subreddit`, `search_subreddit`, `read_post`
- This skill produces text output in the conversation. No files are created.
- If the user wants to save the research, they can ask separately.
