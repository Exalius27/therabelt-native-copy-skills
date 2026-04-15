#!/bin/bash
# Native Visuals — Gemini Image Generation Script
# Usage: bash generate.sh <output_path> <prompt_json_file> [model]
#
# Arguments:
#   output_path      — where to save the generated image (e.g., outputs/visuals/story1/01-hook.jpg)
#   prompt_json_file — path to a JSON file containing the creative brief
#   model            — optional: "flash" (default) or "pro"
#
# Reads GOOGLE_API_KEY from .env in the skill folder or project root.

set -e

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
SKILL_DIR="$(dirname "$SCRIPT_DIR")"
PROJECT_ROOT="$(cd "$SKILL_DIR/../../.." && pwd)"

# Load API key — check skill .env first, then project root .env
if [ -f "$SKILL_DIR/.env" ]; then
  source "$SKILL_DIR/.env"
elif [ -f "$PROJECT_ROOT/.env" ]; then
  source "$PROJECT_ROOT/.env"
fi

if [ -z "$GOOGLE_API_KEY" ]; then
  echo "ERROR: GOOGLE_API_KEY not set. Add it to .env"
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
  MODEL_ID="gemini-2.0-pro-exp-image-generation"
else
  MODEL_ID="gemini-2.0-flash-exp-image-generation"
fi

API_URL="https://generativelanguage.googleapis.com/v1beta/models/${MODEL_ID}:generateContent?key=${GOOGLE_API_KEY}"

# Read the creative brief JSON
BRIEF=$(cat "$PROMPT_JSON_FILE")

# Build the generation request — escape the brief for JSON embedding
ESCAPED_BRIEF=$(python3 -c "import json,sys; print(json.dumps(sys.stdin.read()))" < "$PROMPT_JSON_FILE")

REQUEST_FILE=$(mktemp)
python3 -c "
import json
brief = $ESCAPED_BRIEF
request = {
    'contents': [{
        'parts': [{
            'text': 'Generate a photo based on this creative brief. Follow every detail exactly. The image must look like a real candid photo taken with an iPhone by an everyday person — not AI-generated, not stock photography, not professionally shot. Natural imperfections are critical. Slightly off-center framing. Ambient lighting only. Real-world clutter in the background.\n\nCreative Brief:\n' + brief
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

# Make the API call
RESPONSE_FILE=$(mktemp)

curl -s -X POST "$API_URL" \
  -H "Content-Type: application/json" \
  -d @"$REQUEST_FILE" \
  -o "$RESPONSE_FILE"

# Extract the base64 image data from the response
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
"

# Clean up temp files
rm -f "$RESPONSE_FILE" "$REQUEST_FILE"
