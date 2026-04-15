---
name: native-visuals
description: Use when someone asks to generate native ad images for a finished copy, or asks for scroll-stopping visuals from a story. Reads the copy, extracts 10 key visual scenes, and generates candid iPhone-style images using Gemini (Nano Banana 2).
argument-hint: "[file path to finished copy]"
---

## What This Skill Does

Reads a finished native ad copy file, extracts 10 visual scenes from the hook and lead, and generates candid iPhone-quality images using Google Gemini's image generation. Output is 10 images saved to `outputs/visuals/` with filenames that describe the scene.

The images must look like real photos a real person took with their phone and posted on Facebook. They must NOT look like ads, stock photos, or AI-generated images.

## Execution Flow

### Phase 1: Read the Copy

Step 1: Load the copy file the user provides (or the most recently created file in `outputs/`).
Step 2: Read `wiki/native-ad-visuals.md` for the visual framework and 4 scroll-stopping rules.
Step 3: Read `.claude/skills/native-visuals/reference.md` for the candid photo style guide.
Step 4: Read `.claude/skills/native-visuals/references/real-vs-ai.md` for the real-vs-AI analysis and brief template. This file is MANDATORY — it overrides any instinct to write cinematic or dramatic briefs.

### Phase 2: Extract 10 Visual Scenes

Read the copy from top to bottom. Identify 10 moments that would make strong scroll-stopping images. Prioritize:

1. **Hook scene** (the first visual the reader imagines) — ALWAYS include this. This is the most important image. It is the one that stops the scroll.
2. **Lead scenes** (the next 2-3 scenes that build the story world)
3. **Emotional peak moments** (hospital, vet visit, late-night moment, the dog doing something specific)
4. **"Proof" moments** (objects, places, close-ups that make the story feel real — a pill bottle, a receipt, a car interior, a kitchen counter)
5. **Identity moments** (the character doing something the reader has done — Walmart run, cooking, sitting in a waiting room)

For each scene, write:
- **Scene description**: What's in the frame (1-2 sentences)
- **Why it works**: Which scroll-stop rule it hits (Controversial, Colour, Weird Object, Recognisable)
- **Emotional angle**: What feeling this creates in the reader

Present all 10 scenes to the user for approval BEFORE generating any images.

### Phase 3: Generate Images via Gemini

For each approved scene, use the generation script at `.claude/skills/native-visuals/scripts/generate.sh` to create the image.

**Creative Brief Method** (mandatory for every image):

Do NOT pass a raw prompt to Gemini. Instead, construct a structured JSON creative brief for each image:

```json
{
  "image_description": "Detailed description of what appears in the image",
  "photography_style": "Candid smartphone photo — iPhone 11-13 quality",
  "lighting": "Natural/ambient lighting for the setting (kitchen fluorescent, hospital overhead, parking lot at night, etc.)",
  "camera_angle": "Slightly off-center, not perfectly composed — how a real person would hold their phone",
  "resolution": "720p — avoids the overly clean AI/CGI look",
  "aspect_ratio": "1:1",
  "mood": "The emotional tone of the scene",
  "specific_details": ["List of specific objects, brands, textures, colors that must appear"],
  "what_to_avoid": ["No perfect lighting", "No stock photo poses", "No AI-smooth skin", "No perfect symmetry", "No watermarks", "No text overlays"]
}
```

**Generation rules:**
- Always use 1:1 aspect ratio
- Always use 720p resolution (prevents AI-clean look)
- Always include imperfections: slightly off-center framing, natural shadows, ambient lighting
- People should look like real everyday people — not models, not stock-photo attractive
- Settings should have real-world clutter and detail — not clean/staged
- If the scene includes text (pill bottle label, store sign, etc.), make the text slightly blurry or partially obscured — AI text generation is weak and obvious text ruins the native feel
- Never include TheraBelt branding in any image — these are story images, not product shots

### Phase 4: Save and Present

Step 1: Save all images to `outputs/visuals/[copy-name]/` with descriptive filenames:
  - `01-hook-emergency-vet-waiting-room.jpg`
  - `02-lead-dog-on-kitchen-floor.jpg`
  - `03-walmart-parking-lot-night.jpg`
  - etc.

Step 2: Present all 10 images to the user with the scene description next to each.

Step 3: Ask if the user wants to regenerate any specific images or adjust the style.

## Image Style Spec — "Found Photo" / Candid iPhone

Every image MUST match this style. Read `reference.md` for the full guide, but the short version:

- Looks like someone grabbed their phone and snapped a photo in the moment
- iPhone 11-13 quality — good enough to be clear, imperfect enough to be real
- Natural ambient lighting (not studio, not ring light)
- Slightly off-center composition
- Real-world settings with real-world clutter
- Everyday people — not models
- The kind of photo you'd see in a Facebook post from a friend, not in an ad

### What NEVER to generate:
- Stock photo style (perfect lighting, perfect people, clean backgrounds)
- Obvious AI artifacts (6 fingers, melted text, impossible geometry)
- Professional photography (shallow depth of field, color grading, studio lighting)
- Polished/edited look (filters, vignettes, HDR)
- Product shots or anything that looks like an ad

## Collage Option

If the user requests it (or if the copy warrants it), generate 2x2 or 4-panel collage images that combine related scenes. These work well for:
- Medical journey sequences (bruise + hospital + recovery + selfie)
- "Day in the life" sequences (morning + work + evening + late night)
- "Evidence" collections (pill bottles + prescription + pharmacy + bathroom shelf)

## Model Selection

- Default: `gemini-2.0-flash` (fast, good quality, budget-friendly)
- If user asks for higher quality: `gemini-2.0-pro` (better detail, slower)
- Switch models by saying "use pro" or "use flash"

## Key Constraint

These images support native ads. Their entire purpose is to NOT look like ads. If an image looks polished, professional, or AI-generated, it has failed. The bar is: would this image get scrolled past as "just another friend's Facebook post"? If yes, it works.
