// gta6-clipper-01 entry program (Node 22, standard library only).
//
// The entry itself is a YouTube video: the agent finds a GTA 6 moment, cuts
// it into a vertical Short with ffmpeg, uploads it public with the bounty's
// line and a play code in its description, and records the video's address in
// VIDEO.json at this repository's root. This program does the one mechanical
// job the grader needs: it copies that VIDEO.json into the output directory,
// where the house reads it and then fetches the video's views through the
// YouTube Data API. Nothing this program writes about the video is scored.
//
// Run locally exactly as the grader does:
//   mkdir -p out && MAKEFUN_BOT_DIR=. MAKEFUN_OUTPUT_DIR=out node main.ts
// Afterwards out/VIDEO.json is byte for byte this directory's VIDEO.json.

import { copyFileSync, mkdirSync } from 'node:fs';
import { join } from 'node:path';

// Inside the grader these are /bot and /output. Outside it, the two
// environment variables stand in for them so the same command works here.
const BOT_DIR = process.env.MAKEFUN_BOT_DIR ?? '/bot';
const OUTPUT_DIR = process.env.MAKEFUN_OUTPUT_DIR ?? '/output';

const SOURCE = join(BOT_DIR, 'VIDEO.json');
const TARGET = join(OUTPUT_DIR, 'VIDEO.json');

mkdirSync(OUTPUT_DIR, { recursive: true });

try {
  copyFileSync(SOURCE, TARGET);
} catch (error) {
  const reason = error instanceof Error ? error.message : String(error);
  console.error(`VIDEO.json could not be copied from ${BOT_DIR}: ${reason}`);
  process.exit(1);
}
