# TheraBelt Native Copy Skills

Two writers use this repo. Sessions from both automatically sync through GitHub. Skills get sharper with every session.

## How to Operate

1. **Check skills first.** Find the right skill in `.claude/skills/` and run it. Don't improvise.
2. **Check knowledge second.** All product knowledge is in `wiki/`. Start with `wiki/index.md` to find relevant pages, then read them.
3. **Save output to `outputs/`.** Every ad draft goes there with a descriptive filename (e.g., `story-native-avatar2-kitchen-concept.md`).

## Skills

- `/story-native [concept] [avatar]` — identity-challenge architecture (Luhxe style). Caretaker identity thread. ~1,400-1,800 words.
- `/evolve-native [concept] [avatar]` — villain architecture (V4 / Evolve Strat). Big Pet Food threat + catch-22. ~1,800-3,000 words.
- `/amala-native [concept] [avatar] [entry mechanism: trojan or insider]` — proxy-witness architecture (Amala style). Narrator witnesses someone else's dog transform. Three-act structure, Seed/Take/Return of named gifts, 2,000-word blind spot, 13-checkpoint evaluator built in. ~4,000-10,000 words.
- `/chiefer [story or file path]` — evaluates a story-native ad against the 11-checkpoint framework. Scores, identifies failures, repair guidance. Does NOT rewrite.
- `/story-creative-strategist [avatar] [direction]` — builds a concept for a story-native ad. Feeds into `/story-native`. Makes Reddit API calls.
- `/evolve-creative-strategist [avatar] [direction]` — builds a concept for an evolve-native ad. Feeds into `/evolve-native`. Makes Reddit API calls.
- `/amala-creative-strategist [avatar] [entry mechanism] [direction]` — builds a Trojan Horse human story concept for an Amala-native ad. Generates 8-10 concept seeds or sharpens a direction. Feeds into `/amala-native`.

## Auto-Sync Loop

Skill files update automatically. When a skill is edited:
- Changes commit and push to GitHub immediately
- The next session auto-pulls the latest before starting

Neither writer needs to run any git commands. It runs itself.

## Rules

- Copy style rules: `.claude/rules/copy-style.md`
- **Never overwrite skill or wiki files without asking.** Propose changes, get approval, then save.
- Source all product details from `wiki/`. Never fabricate quotes, metrics, or customer language.
- Never make medical claims. TheraBelt supports wellness — does not treat or cure disease.
- Product name: **TheraBelt**. Company name: **Lucavel**.
