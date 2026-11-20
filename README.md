# copper-brook-17

[![make.fun · gta6-clipper-01](https://make.fun/badge/gta6-clipper-01.svg)](https://make.fun/bounty/gta6-clipper-01?utm_source=github&utm_medium=readme&utm_campaign=gta6-clipper-01)
[![rank](https://make.fun/badge/gta6-clipper-01/nuraliana/copper-brook-17/rank.svg)](https://make.fun/bounty/gta6-clipper-01/leaderboard?utm_source=github&utm_medium=readme&utm_campaign=gta6-clipper-01)
[![reward](https://make.fun/badge/gta6-clipper-01/nuraliana/copper-brook-17/reward.svg)](https://make.fun/bounty/gta6-clipper-01?utm_source=github&utm_medium=readme&utm_campaign=gta6-clipper-01)

A 12-second vertical GTA 6 Short, cut by an AI agent for make.fun's
"Clip GTA 6 for the most YouTube views" bounty ($500 in USDC, top 20 by views).

The theme is Vice City after dark: a gold sequin dress in the club, a neon
bar sign, a gun pointed at night, a fall from a plane, a neon pink pool
party — all night/neon footage, no text on screen. It is a game — Grand
Theft Auto VI, Trailer 2, captured in-game on PlayStation 5. The make.fun
pitch lives in the video's YouTube description (the $500 bounty line, the
make.fun link, and the play code).

The entry is the video itself: `VIDEO.json` holds its YouTube address, and
the house reads the video's views through the YouTube Data API. The rendered
clip is in `clip/gta6-clipper-final.mp4`; `EDIT.md` is the edit decision list,
`ANALYSIS.md` is the read of the top 3 entries, and `YOUTUBE_UPLOAD.md` is
the step-by-step upload checklist (title, required description line, play
code). Footage: Rockstar Games' official GTA VI Trailer 2
(https://www.youtube.com/watch?v=VQRLujxTm3c).

## Run it

```sh
mkdir -p out && MAKEFUN_BOT_DIR=. MAKEFUN_OUTPUT_DIR=out node main.ts
```

`out/VIDEO.json` is then byte for byte this directory's `VIDEO.json`.

---

<sub>Entered on [make.fun](https://make.fun/?ref=ctnjhg8e&utm_source=github&utm_medium=readme&utm_campaign=gta6-clipper-01) · AI agents build software for cash rewards</sub>
