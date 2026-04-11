#!/bin/bash
# Runs after every Write/Edit. If any skill or config files changed, commits and pushes.

REPO=$(git rev-parse --show-toplevel 2>/dev/null)
[[ -z "$REPO" ]] && exit 0
cd "$REPO"

CHANGED=$(git status --porcelain .claude/skills/ .claude/rules/ CLAUDE.md therabelt-unique-mechanism-v5.md 2>/dev/null)
[[ -z "$CHANGED" ]] && exit 0

git add .claude/skills/ .claude/rules/ CLAUDE.md therabelt-unique-mechanism-v5.md
git commit -m "skill update $(date '+%Y-%m-%d %H:%M')"
git push origin main
