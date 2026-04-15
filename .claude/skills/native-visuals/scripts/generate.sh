#!/bin/bash
# Native Visuals — Gemini Image Generation Script
# Usage: bash generate.sh <output_path> <prompt_json_file> [model]
#
# Arguments:
#   output_path      — where to save the generated image (e.g., outputs/visuals/story1/01-hook.jpg)
#   prompt_json_file — path to a JSON file containing the creative brief
#   model            — optional: "flash" (default) or "pro"
#
# Reads GOOGLE_API_KEY_1, _2, _3 from .env. Rotates through keys on quota errors.

set -e

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
SKILL_DIR="$(dirname "$SCRIPT_DIR")"
PROJECT_ROOT="$(cd "$SKILL_DIR/../../.." && pwd)"

# Load API keys — check skill .env first, then project root .env
if [ -f "$SKILL_DIR/.env" ]; then
  source "$SKILL_DIR/.env"
elif [ -f "$PROJECT_ROOT/.env" ]; then
  source "$PROJECT_ROOT/.env"
fi

# Collect all available keys
KEYS=()
[ -n "$GOOGLE_API_KEY_1" ] && KEYS+=("$GOOGLE_API_KEY_1")
[ -n "$GOOGLE_API_KEY_2" ] && KEYS+=("$GOOGLE_API_KEY_2")
[ -n "$GOOGLE_API_KEY_3" ] && KEYS+=("$GOOGLE_API_KEY_3")
# Fallback to single key if old format
[ -n "$GOOGLE_API_KEY" ] && [ ${#KEYS[@]} -eq 0 ] && KEYS+=("$GOOGLE_API_KEY")

if [ ${#KEYS[@]} -eq 0 ]; then
  echo "ERROR: No API keys set. Add GOOGLE_API_KEY_1 (and optionally _2, _3) to .env"
  exit 1
fi

OUTPUT_PATH="$1"
PROMPT_JSON_FILE="$2"
MODEL="${3:-flash}"

if [ -z "$OUTPUT_PATH" ] || [ -z "$PROMPT_JSON_FILE" ]; then
  echo "Usage: bash generate.sh <output_path> <prompt_json_file> [flash|pro]"
  exit 1
fi

# Set model endpoint
if [ "$MODEL" = "pro" ]; then
  MODEL_ID="gemini-3-pro-image-preview"
else
  MODEL_ID="gemini-2.5-flash-image"
fi

# Build the generation request
ESCAPED_BRIEF=$(python3 -c "import json,sys; print(json.dumps(sys.stdin.read()))" < "$PROMPT_JSON_FILE")

REQUEST_FILE=$(mktemp)
python3 -c "
import json
brief = $ESCAPED_BRIEF
request = {
    'contents': [{
        'parts': [{
            'text': 'Generate a low-quality phone photo. NOT a professional photo. NOT cinematic. NOT dramatic. This must look like a real person took this with an older iPhone and posted it to Facebook.\n\nCRITICAL: Flat ugly lighting (overhead fluorescent or direct flash). JPEG compression visible. Auto white balance slightly wrong. Framing is imperfect and tilted. Background has random clutter. No color grading. No mood lighting. No dramatic shadows. No depth of field blur. No artistic composition. Everything mostly in focus because phone cameras have small sensors. People look like real average everyday people, not models or actors. Skin has real texture. This should look like a 2019 Facebook post, not a movie still.\n\nCreative Brief:\n' + brief
        }]
    }],
    'generationConfig': {
        'responseModalities': ['TEXT', 'IMAGE'],
        'temperature': 1.0
    }
}
with open('$REQUEST_FILE', 'w') as f:
    json.dump(request, f)
"

# Create output directory
mkdir -p "$(dirname "$OUTPUT_PATH")"

# Try each key until one works
RESPONSE_FILE=$(mktemp)
SUCCESS=false

for i in "${!KEYS[@]}"; do
  KEY="${KEYS[$i]}"
  KEY_NUM=$((i + 1))
  API_URL="https://generativelanguage.googleapis.com/v1beta/models/${MODEL_ID}:generateContent?key=${KEY}"

  curl -s -X POST "$API_URL" \
    -H "Content-Type: application/json" \
    -d @"$REQUEST_FILE" \
    -o "$RESPONSE_FILE"

  # Check if it's a quota error
  QUOTA_ERROR=$(python3 -c "
import json
with open('$RESPONSE_FILE', 'r') as f:
    resp = json.load(f)
err = resp.get('error', {})
if err.get('code') in [429, 400] and 'quota' in err.get('message', '').lower():
    print('quota')
elif err.get('code'):
    print('error')
else:
    print('ok')
" 2>/dev/null || echo "error")

  if [ "$QUOTA_ERROR" = "quota" ]; then
    echo "Key $KEY_NUM hit quota limit, trying next key..." >&2
    continue
  elif [ "$QUOTA_ERROR" = "ok" ]; then
    # Try to extract image
    python3 -c "
import json, sys, base64
with open('$RESPONSE_FILE', 'r') as f:
    resp = json.load(f)
candidates = resp.get('candidates', [])
if not candidates:
    if 'error' in resp:
        print(f'API Error: {resp[\"error\"].get(\"message\", \"unknown\")}', file=sys.stderr)
    else:
        print(f'No candidates in response: {json.dumps(resp)[:500]}', file=sys.stderr)
    sys.exit(1)
parts = candidates[0].get('content', {}).get('parts', [])
for part in parts:
    if 'inlineData' in part:
        img_bytes = base64.b64decode(part['inlineData']['data'])
        with open('$OUTPUT_PATH', 'wb') as out:
            out.write(img_bytes)
        print('SUCCESS: $OUTPUT_PATH')
        sys.exit(0)
print('No image data in response', file=sys.stderr)
for part in parts:
    if 'text' in part:
        print(f'Model said: {part[\"text\"]}', file=sys.stderr)
sys.exit(1)
" && SUCCESS=true && break
  else
    # Non-quota error — print and try next key
    python3 -c "
import json
with open('$RESPONSE_FILE', 'r') as f:
    resp = json.load(f)
err = resp.get('error', {})
print(f'Key $KEY_NUM error: {err.get(\"message\", \"unknown\")}')
" >&2
    continue
  fi
done

# Clean up temp files
rm -f "$RESPONSE_FILE" "$REQUEST_FILE"

if [ "$SUCCESS" = false ]; then
  echo "ERROR: All API keys exhausted or failed." >&2
  exit 1
fi
