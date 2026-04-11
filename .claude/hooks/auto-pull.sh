#!/bin/bash
# Runs on every session prompt. Pulls latest from GitHub at most once every 30 minutes.

REPO=$(git rev-parse --show-toplevel 2>/dev/null)
[[ -z "$REPO" ]] && exit 0

LAST="$REPO/.git/.last-pull"
NOW=$(date +%s)
PREV=$(cat "$LAST" 2>/dev/null || echo 0)

[[ $((NOW - PREV)) -lt 1800 ]] && exit 0

cd "$REPO"
git pull --rebase --autostash origin main 2>/dev/null
echo "$NOW" > "$LAST"
