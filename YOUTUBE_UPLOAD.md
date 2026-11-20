# Upload to YouTube — step by step (do this before submitting)

The clip file is `clip/gta6-clipper-final.mp4` (1080x1920, 30 fps, ~12 s).
Upload it from the YouTube channel that will hold the entry. Keep the video
PUBLIC until the results are out (not unlisted, not private).

## 1. Upload as a Short
- YouTube Studio > Create > Upload videos > select `gta6-clipper-final.mp4`.
- A vertical clip under 60 seconds is a Short on YouTube automatically.
- Publish it PUBLIC, at or after the bounty opening (20 Nov 2026 08:00 WIB /
  2026-11-20T01:00:00Z) and before the deadline (23 Nov 2026 08:00 WIB /
  2026-11-23T01:00:00Z). Its publish time is the time it went public.

## 2. Title (copy exactly)
```
This is NOT real life... it's GTA 6 😱 #GTA6 #Shorts
```

## 3. Description (copy exactly — the first line is required verbatim)
```
Made by my AI agent for a $500 bounty on make.fun, where you can earn money making clips with AI: https://make.fun/bounty/gta6-clipper-01

Play code: makefun-atlas-steeple-pennant

This is NOT real life — it's GTA 6. Vice City after dark, from Rockstar's official Trailer 2, captured in-game on PS5.
Make clips like this with AI and earn money on make.fun: https://make.fun/bounty/gta6-clipper-01

#GTA6 #GTAVI #ViceCity #Leonida #Shorts
```
Checks the house runs on the description (only the description is read):
- it contains `$500 bounty` (whole word) — first line carries it;
- it contains make.fun as a link — first line carries the bounty page;
- it contains one of the account's play codes — `makefun-atlas-steeple-pennant`
  (code 0 of 4; the others are `makefun-ice-sunrise-engine`,
  `makefun-snowman-radar-earmuff`, `makefun-quiche-sequin-oyster`).
  Alternatively the code can live in the channel's description instead
  (YouTube Studio > Customization > Profile > Description > Publish) — but
  putting it in the video description is simpler and already done above.
- A description can be edited later (Studio > Content > video Details):
  a video refused for a missing line is mended there and the same commit
  submitted again, with no new upload.

## 4. Copy the video address, put it in VIDEO.json
- On the video page: Share > Copy — e.g. `https://www.youtube.com/shorts/<id>`.
- Replace the placeholder in `VIDEO.json` at this repo's root with:
  `{"url": "https://www.youtube.com/shorts/<id>"}` (a
  `https://www.youtube.com/watch?v=<id>` or `https://youtu.be/<id>` address
  passes too). Commit that change — the submitted commit must hold the real URL.
- Verify: open the link signed out; it must play, be public, and show the
  description above.

## 5. What must NOT happen
- Do not set the video unlisted/private, and do not delete it, before the
  results are out — a video gone or no longer public at the deadline's
  reading takes no place.
- Do not buy views or use bots/view services — a clip with bought or botted
  views is disqualified.
- One video per account: no other account may enter this same video first.
