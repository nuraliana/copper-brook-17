#!/usr/bin/env bash
# Build the gta6-clipper-01 clip from Rockstar's GTA VI Trailer 2.
#
# Source (fetched in the build session, NOT shipped in the repo):
#   Rockstar Games, "Grand Theft Auto VI Trailer 2"
#   https://www.youtube.com/watch?v=VQRLujxTm3c (1920x1080, 30 fps, 166.76 s)
#   yt-dlp -f "bv*[height<=1080]+ba/b[height<=1080]" -o gta6-trailer2.webm \
#     "https://www.youtube.com/watch?v=VQRLujxTm3c"
#
# Usage: SOURCE=/path/to/gta6-trailer2.webm ./build_clip.sh
# Letterbox: every Trailer 2 shot is letterboxed to 1920x864 at y=108
# (cropdetect). The vertical crop is therefore 486x864 at y=108
# (864 * 9/16 = 486), scaled to 1080x1920 — no black bars, no stretch.
# Per-segment x keeps the subject in the 486 px window (picked from stills).
#
# The same ffmpeg commands were run directly in the build session; this file
# records them so the cut is reproducible. See EDIT.md for the decision list.
set -euo pipefail

SRC="${SOURCE:-/tmp/gta6-trailer2.webm}"
WORK="${WORKDIR:-/tmp/clipper-work}"
OUT="clip/gta6-clipper-final.mp4"
FONT="/usr/share/fonts/truetype/noto/NotoSans-Bold.ttf"

mkdir -p "$WORK" clip

# S1 82.0-86.0 — sunset pier, no text
ffmpeg -y -v error -ss 82.0 -to 86.0 -i "$SRC" -vf \
  "crop=486:864:650:108,scale=1080:1920" \
  -c:v libx264 -crf 23 -preset medium -pix_fmt yuv420p -r 30 \
  -c:a aac -b:a 128k "$WORK/seg1.mp4"

# S2 140.0-142.0 — jet ski couple
ffmpeg -y -v error -ss 140.0 -to 142.0 -i "$SRC" -vf \
  "crop=486:864:950:108,scale=1080:1920" \
  -c:v libx264 -crf 23 -preset medium -pix_fmt yuv420p -r 30 \
  -c:a aac -b:a 128k "$WORK/seg2.mp4"

# S3 147.0-148.0 — speedboat spray
ffmpeg -y -v error -ss 147.0 -to 148.0 -i "$SRC" -vf \
  "crop=486:864:600:108,scale=1080:1920" \
  -c:v libx264 -crf 23 -preset medium -pix_fmt yuv420p -r 30 \
  -c:a aac -b:a 128k "$WORK/seg3.mp4"

# S4 148.0-149.0 — night motorcycle
ffmpeg -y -v error -ss 148.0 -to 149.0 -i "$SRC" -vf \
  "crop=486:864:550:108,scale=1080:1920" \
  -c:v libx264 -crf 23 -preset medium -pix_fmt yuv420p -r 30 \
  -c:a aac -b:a 128k "$WORK/seg4.mp4"

# S5 149.0-150.5 — car interior, night
ffmpeg -y -v error -ss 149.0 -to 150.5 -i "$SRC" -vf \
  "crop=486:864:1100:108,scale=1080:1920" \
  -c:v libx264 -crf 23 -preset medium -pix_fmt yuv420p -r 30 \
  -c:a aac -b:a 128k "$WORK/seg5.mp4"

# S6 153.0-155.5 — sunset street aerial, no text
ffmpeg -y -v error -ss 153.0 -to 155.5 -i "$SRC" -vf \
  "crop=486:864:900:108,scale=1080:1920" \
  -c:v libx264 -crf 23 -preset medium -pix_fmt yuv420p -r 30 \
  -c:a aac -b:a 128k "$WORK/seg6.mp4"

# No S7 end card: all on-screen text removed on Nur's order 20 Nov 18:54 WIB.
# Video is pure footage, S1-S6 only, 12 s total.

# Concat with a re-encode: -c copy keeps each segment's zero-based timestamps,
# so sequential decoders only show the last segment (found in v1 polish).
# Re-encoding normalises timestamps across the whole 12 s.
printf "file '%s/seg1.mp4'\nfile '%s/seg2.mp4'\nfile '%s/seg3.mp4'\nfile '%s/seg4.mp4'\nfile '%s/seg5.mp4'\nfile '%s/seg6.mp4'\n" \
  "$WORK" "$WORK" "$WORK" "$WORK" "$WORK" "$WORK" > "$WORK/segments.txt"
ffmpeg -y -v error -f concat -safe 0 -i "$WORK/segments.txt" \
  -c:v libx264 -crf 23 -preset medium -pix_fmt yuv420p -r 30 -c:a aac -b:a 128k -movflags +faststart "$OUT"

ffprobe -v error -show_entries format=duration,size \
  -show_entries stream=codec_type,width,height,r_frame_rate,codec_name \
  -of default=noprint_wrappers=1 "$OUT"
echo "built $OUT"
