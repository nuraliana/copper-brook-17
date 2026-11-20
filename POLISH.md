# Polish report — gta6-clipper-final.mp4 (v3, final)

Checked by watching frames (1 fps contact sheet + single-frame grabs at
t=0, 1, 5, 6.5, 10.5, 13, 16) and by probe/volumedetect. Each item is
PASS/FAIL with the defect and the fix. v1 was the first render, v2 fixed the
two structural defects, v3 is the final render.

## 1. Format: 1080x1920, 30 fps, ~20 s, H.264 + AAC — PASS
- v3 probe: 1080x1920, 30/1 fps, duration 20.03 s, H.264 + AAC,
  7,084,100 bytes, faststart. A vertical clip under 60 s is a Short.
- No change needed.

## 2. Hook text present from frame 0 — v1 FAIL, v3 PASS
- Defect (v1): drawtext `enable='between(t,0.5,4)'` — the first frame
  (t=0) had no text, so a scroller's first glance was textless.
- Fix (v3): enable `between(t,0,4)`; frame 0 grab now shows
  "INI BUKAN / VIDEO ASLI" over the pier.

## 3. No letterbox bars — v1 FAIL, v2 PASS
- Defect (v1): crop 608x1080 of the 1920x1080 frame kept Trailer 2's
  cinematic bars — black bands top and bottom of the vertical frame.
- Fix (v2): cropdetect on all six segments reads 1920x864 at y=108, so
  the vertical crop is 486x864 at y=108, scaled to 1080x1920. v2/v3
  frames fill the frame edge to edge, no bars, no stretch.

## 4. Timeline plays in order on sequential decode — v1 FAIL, v2 PASS
- Defect (v1): concat demuxer with `-c copy` kept each segment's
  zero-based timestamps. Seeking (`-ss`) showed the right frames, but a
  sequential decode (fps=1 sheet) showed ONLY the 8 s end card — the
  first 12 s were dropped as duplicate timestamps.
- Fix (v2): concat with a full re-encode (libx264 crf 23, AAC 128k).
  The v2 fps=1 sheet shows all 20 frames in order: pier, jet ski,
  speedboat, bike, car interior, sunset street, end card.

## 5. Hook text readable on every background — PASS
- White Noto Sans Bold 110 px + 4 px black border, upper-middle
  (y=16%). Readable over the bright sunset (t=1, 2) and over the darker
  boatyard pan (t=3). No change needed.

## 6. Pitch text fits the frame — PASS
- Line 1 "Make clips like this with AI" at 56 px measures ~900 px wide
  on a 1080 px frame; line 2 (yellow) and the 44 px URL line fit with
  margin. Verified on the t=13 grab. (The 64 px draft would have
  overflowed at ~1100 px; reduced to 56 px before the first render.)

## 7. Reveal framing (sunset street, "INI GTA 6.") — v1 MARGINAL, v2 PASS
- Defect (v1): crop x=800 put palms centre-frame and the street as a
  thin strip at the right edge.
- Fix (v2): crop x=900 — palms still anchor the left, more road, cars
  and golden light visible. Verified on the t=10.5 grab.

## 8. Audio present, loud enough, fades out — PASS
- Full-clip volumedetect: mean_volume -13.7 dB, max_volume 0.0 dB
  (trailer music throughout; no silent stretch).
- End card audio dipped to 0.4 with a 1 s fade-out at the end, so the
  clip ends cleanly instead of cutting off mid-beat. No change needed.

## 9. End card length (8 s static) — PASS
- Matches the winners: rank 2 holds its pitch card ~13 s, rank 3 ~8 s.
  Text stays on screen long enough to read (three short lines).
  No change needed.

## 10. Subjects stay in the 486 px vertical window — PASS
- Jet ski couple centred (t=5), speedboat centred in its wake (t=6),
  night rider visible (t=7), Lucia's face in the car interior (t=8, 9),
  pier people + dock in frame (t=0-3). Per-segment x picked from
  stills: 650 / 950 / 600 / 550 / 1100 / 900. No change needed.

## 11. Only Rockstar Trailer 2 footage, nothing from another entrant — PASS
- All six segments are cut from `gta6-trailer2.webm` (Trailer 2,
  VQRLujxTm3c) in this session. The Launch Trailer was scouted but no
  frame of it is in the clip; no other entrant's video was used.
