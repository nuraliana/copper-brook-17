# Edit decision list — VICE CITY AFTER DARK (fresh rebuild, no on-screen text)

## Creative decision (rebuilt 20 Nov 20:10 WIB, by Nur's order)
- **Moment — "Vice City After Dark".** Five night/neon/club moments from
  Rockstar's official GTA VI Trailer 2 (YouTube `VQRLujxTm3c`, 2:47,
  captured entirely in-game on PlayStation 5). This REPLACES the old
  "Golden hour in Leonida" theme (sunset pier 82-86 s + chase 140-155 s)
  — Nur ordered the old video deleted and a fresh new theme built
  (20 Nov 19:50 WIB: "MASIH SAMA!!! BUAT BARU FRESH! NEW TEMA!").
  1. Gold sequin dress in the club (93-96 s): glamour, the opener.
  2. Bar with the neon Vice City sign (100.5-102.5 s): the iconic shot.
  3. Man pointing a gun at night (111-113 s): tension.
  4. Falling from the plane / night truck (119.5-122.5 s): the action peak.
  5. Neon pink pool party (126-128 s): vibrant, the closer.
- **Why this moment:** the old sunset theme was the same footage Nur had
  already seen three times. Night/neon/club is the opposite mood — it
  shows a different Vice City and cannot be mistaken for the old clip.
- **No on-screen text (Nur's orders 20 Nov 18:54 + 19:50 WIB):** NO text
  is burned into the video — no Indonesian, no English. Nur: "SIAPA SURUH
  KAU TULIS DI VIDEO" (who told you to write on the video). Audio is the
  trailer's own track, in English. (Nur also ordered "GUNAKAN BAHASA
  INGGRIS" 20 Nov 19:52 WIB — with no text in the video there is no
  Indonesian anywhere in it; the audio is English.)
- **Format:** vertical 9:16, 1080x1920, 30 fps, H.264 + AAC, 12.01 s —
  a YouTube Short (under 60 s). Centre-crop from the 1920x1080 source,
  with a per-segment horizontal offset from cropdetect motion-centre so
  the subject stays in frame.
- **Audio:** the trailer's own audio throughout, loudness-normalised to
  -14 LUFS (Shorts spec).
- **Title (YouTube):** `This is NOT real life... it's GTA 6 😱 #GTA6 #Shorts`
- **Description (YouTube):** see YOUTUBE_UPLOAD.md — the required line
  verbatim first, then play code `makefun-atlas-steeple-pennant`, then a
  short pitch and hashtags.

## Source footage (all from one file)
- File: Rockstar Games, "Grand Theft Auto VI Trailer 2",
  https://www.youtube.com/watch?v=VQRLujxTm3c — 1920x1080, 30 fps, 166.76 s.
- Downloaded with yt-dlp (fetching source footage in the session is
  allowed by the kit's AGENT.md; a finished clip someone else cut is not
  — this clip is cut here, by ffmpeg-skill tools run in this session).
- No footage from any other entrant or channel is used.

## Segments (Trailer 2 timestamps, shots from scenes.py — 50 shots total)
| # | In | Out | Dur | Shot | Crop (486x864 @ y=108) | On-screen text |
|---|----|-----|-----|------|------------------------|----------------|
| M1 | 93.0 | 96.0 | 3.0 s | Gold sequin dress, club | x=662 | — |
| M2 | 100.5 | 102.5 | 2.0 s | Bar, neon Vice City sign | x=796 | — |
| M3 | 111.0 | 113.0 | 2.0 s | Man pointing gun, night | x=752 | — |
| M4 | 119.5 | 122.5 | 3.0 s | Falling from plane / truck, night | x=776 | — |
| M5 | 126.0 | 128.0 | 2.0 s | Neon pink pool party | x=730 | — |

Total: 12.0 s. Timeline: M1 0-3, M2 3-5, M3 5-7, M4 7-10, M5 10-12.
Crop x = motion-centre midpoint minus 243 (half of 486), rounded even.
No text, no end card.

## Text style
No on-screen text. (Verified by reading the look.py 3x2 sheet at 1, 3, 5,
7, 9, 11 s: clean night/neon footage, no text anywhere.)

## Build (ffmpeg-skill 4.1.2 — no raw ffmpeg)
- `probe.py` source: 1920x1080, 30 fps, AV1, 166.761 s.
- `scenes.py --shots`: 50 shots; new-theme moments picked from the
  survey sheet + single-frame looks (trailer-survey.png, f120/f132/f136).
- `cropdetect.py --motion-centre` per segment → crop x above.
- `cut.py --accurate` per segment (frame-accurate, 3.0/2.0/2.0/3.0/2.0 s).
- `crop.py` per segment (486x864 @ y=108, x per table).
- `render.py project-dark.json`: join hard-cut (`transition: none` —
  the default fade would have cut the video to 9.5 s) → fit 1080x1920 →
  loudness -14 LUFS → export youtube-shorts → check shorts.
  Base output: `work-skill/vice-city-dark-base.mp4`.
- Output: `clip/gta6-clipper-final.mp4` (= base, copied) — 1080x1920,
  30 fps, H.264 (crf 18-20), AAC 192k stereo, yuv420p, faststart,
  12.01 s, 10.9 MB, loudness -13.9 LUFS. Check shorts: 12 checks,
  0 failed, 1 warning (subtitles — optional, skipped per no-text order).
- Source file `gta6-trailer2.webm` is NOT in the repo (34 MB, Rockstar's
  file); only the 12 s cut is shipped, plus this edit list.
- Work dir: `work-skill/` (project-dark.json, n1-n5 cuts/crops,
  look-dark.png, trailer-survey.png). Old sunset build lives in `work/`
  + `build_clip.sh` (kept for reference, NOT the current video).

## Why no text (tool notes, 20 Nov 20:0x WIB)
- `caption.py` REJECTED for large display text: at every size tried
  (110, 72) it splits the words into character fragments ("THIS IS NOT"
  → "T"/"HI"/"S"/"IS"... — 2 cues become 10) because its wrapping
  column is too narrow for display text. It is a caption tool, not a
  title tool.
- `graphics.py --template title` REJECTED: it darkens the whole frame
  (0.55 dark overlay) and adds a yellow progress bar — not wanted.
- So the video stays pure footage, per Nur's no-text orders.

## Polish notes (old sunset theme, kept for reference)
- v1: hook text at y=25% sat too low and collided with the pier railing;
  moved to y=16% and enlarged to 110 px.
- v1: S6 crop x=656 cut the sun off the right edge; moved to x=850 so the
  sun and the street both stay in frame.
- v1: end-card text at 64 px overflowed; reduced to 56 px.
- v1 FAIL letterbox: crop 608x1080 kept Trailer 2's cinematic bars.
  Fixed in v2: cropdetect reads 1920x864 at y=108, so the vertical crop
  is 486x864 at y=108.
- v1 FAIL concat: `-c copy` kept zero-based timestamps per segment.
  Fixed in v2: concat with a full re-encode.
- See POLISH.md for the per-item PASS/FAIL report.
