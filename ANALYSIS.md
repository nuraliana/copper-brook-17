# Rank 1-3 analysis — gta6-clipper-01 (read 20 Nov 2026, ~10:45 WIB)

Board at read time: 298 entries. Development board refreshes at most every 15
minutes, so live YouTube counts below run ahead of the board.

## Rank 1 — man467 — "Siram Polisi Pakai Mobil Pemadam | GTA 6"
- Video: https://www.youtube.com/shorts/oCcC4Tjj6aM — 55 s, 1080x1920, 30 fps.
- Board: 753 views at intake; live ~886 views, 9 likes, 0 comments when read.
- Moment: a funny GTA 6 beat (spraying police with a fire truck) — the only top
  entry whose hook is a joke instead of "looks real".
- Title: Indonesian. The only top-3 title in Bahasa Indonesia, and it works:
  an Indonesian title does not hurt views; it may help with the local audience.
- Description: the required line verbatim, then a make.fun referral link, then
  `Play code: makefun-lamp-agate-relay`.
- Weakness: 55 s is the longest clip in the top 5; the joke needs the full
  minute. A shorter clip with the same energy would likely hold better.

## Rank 2 — ipan-pan — "This is NOT real life... it's GTA 6"
- Video: https://www.youtube.com/shorts/5ognxPSSKyA — 28 s, 1080x1920, 30 fps.
- Board: 647 views; live ~826 views, 24 likes, 1 comment when read.
- Moment: Rockstar's official Ocean Drive gameplay — a drive down a street so
  photorealistic people mistake it for real Miami. The whole clip is ONE
  continuous driving shot.
- Hook (first 3 s): giant white bold text over the footage, "THIS IS NOT
  REAL LIFE", then "THIS IS GTA 6", then "VICE CITY HAS NEVER LOOKED THIS REAL".
  The text IS the hook: the viewer is asked a question the footage answers.
- Pitch (end card, ~13 s over a darkened, blurred still): "AN AI MADE THIS
  CLIP" / "MAKE CLIPS LIKE THIS WITH AI" / "AND EARN MONEY ON make.fun" /
  "make.fun/bounty/gta6-clipper-01". Text on screen only, no voice.
- Description: required line verbatim + "This is NOT real life — it's GTA 6.
  Vice City has never looked this real. An AI made this clip. Make clips like
  this with AI and earn money on make.fun." + play code
  `makefun-sky-gumdrop-gerbil` + hashtags #GTA6 #GTAVI #ViceCity #Shorts.
- Weakness: the end card is very dark and blurry; the footage underneath is
  almost invisible for the last third of the clip.

## Rank 3 — monafayola — "Real Life or GTA 6?"
- Video: https://www.youtube.com/shorts/WJjjAoHsTHk — 29 s, 720x1280, 30 fps.
- Board: 604 views; live ~853 views, 11 likes, 0 comments when read.
- Moment: the SAME Ocean Drive driving shot as rank 2 (same footage, same
  street, same cars). Two of the top three entries use an identical moment.
- Hook: "REAL LIFE... OR GTA 6?" in the first seconds, then the reveal
  "IT'S GTA 6." mid-clip.
- Pitch (end card over darkened footage): "Make clips like this with AI and
  earn money on make.fun" + "make.fun/bounty/gta6-clipper-01".
- Description: required line verbatim + play code
  `makefun-alder-marina-blimp` + "This is NOT Miami — it's GTA 6. Rockstar's
  official Ocean Drive gameplay, so real people thought it was real life."
  + "Think you can clip better? Make clips like this with AI and earn money
  on make.fun" + hashtags.
- Weakness: 720x1280 (not 1080x1920) and the same moment as rank 2 — it
  still ranks, so resolution is not the deciding factor.

## Rank 5 (for the method) — juse143047
- Video: https://www.youtube.com/watch?v=msZXutZ62cY — 18 s, 1080x1920.
- Board: 465 views; live ~915 views when read (already above rank 1's live
  count — the board lags the live count by up to 15 minutes).
- Title: "GTA 6 IS OUT NOW — and it looks like THIS". The entry title on the
  board itself describes the method: "Trailer 2 chase run (138-151s), 18s
  vertical Short, make.fun pitch end card".
- Lesson: 18 s works. A short clip can outrun a 55 s one.

## What the artifact endpoint gave
`GET /api/submissions/<id>/artifact.webp?phase=dev` answers
`{"success":false,"error":[{"message":"submission <id> has no judged dev run"}]}`
for all three — there is no artifact image for this bounty, because the entry
IS the YouTube video. The analysis above therefore uses the leaderboard data
plus the public videos themselves (metadata via yt-dlp, frames via ffmpeg).

## Patterns that win (my own conclusions)
1. The hook is a question about reality: "is this real life?" — three of the
   top five ride it. The footage must look real enough that the question lands.
2. Big bold white text in the first second, over the footage itself. No slow
   intro, no title card, no black screen.
3. One moment, not a montage (ranks 2 and 3 are a single continuous shot;
   rank 5 is a tight chase run from one trailer section).
4. The pitch is a static end card: 2-3 short lines + the bounty URL, on a
   darkened frame, for 6-13 s. Text on screen only — no voice in any top entry.
5. Description always carries the required line verbatim plus the entrant's
   own play code. Every top entry does this; it is a gate, not a style choice.
6. 18-30 s beats 55 s. Short holds retention on Shorts.

## What this entry does differently
- Same proven question ("is this real?"), but fresh footage: nobody in the
  top 5 uses the Leonida Keys sunset pier (Trailer 2, 82-86 s) or the golden
  sunset street aerial (Trailer 2, 153-155 s). Ranks 2 and 3 both use the
  same Ocean Drive shot, and rank 5 uses the 138-151 s chase.
- Indonesian hook text ("INI BUKAN VIDEO ASLI") — rank 1 proves an Indonesian
  title wins; ranks 2/3/5 are all English.
- The pitch card keeps the canonical English wording from the kit
  ("Make clips like this with AI and earn money on make.fun"), so the admins
  read exactly what the rules suggest, while the hook speaks Indonesian.
- 20 s total, 1080x1920, 30 fps — in the winning length band.
