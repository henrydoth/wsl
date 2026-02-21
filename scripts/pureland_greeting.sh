#!/usr/bin/env bash
# PureLand Greeting (bright, cheerful, real ANSI escape)
[[ -t 1 ]] || exit 0

ESC=$'\033'
RST="${ESC}[0m"
BOLD="${ESC}[1m"
DIM="${ESC}[2m"

# Truecolor (tươi vui, pastel)
SUN="${ESC}[38;2;255;215;120m"   # vàng nắng
PINK="${ESC}[38;2;255;150;200m"  # hồng sen
SKY="${ESC}[38;2;130;210;255m"   # xanh trời
MINT="${ESC}[38;2;140;255;200m"  # xanh ngọc
LAV="${ESC}[38;2;200;170;255m"   # tím nhạt
GRAY="${ESC}[38;2;180;180;180m"
WHT="${ESC}[38;2;245;245;245m"

sleep_s() { perl -e "select(undef,undef,undef,$1)"; } 2>/dev/null || sleep_s(){ sleep "$1"; }

center() {
  local s="$1"
  local cols="${COLUMNS:-80}"
  # độ dài text có màu sẽ tính sai vì có ESC; chấp nhận (đẹp là chính)
  local len="${#s}"
  local pad=$(( (cols - len) / 2 ))
  (( pad < 0 )) && pad=0
  printf "%*s%s\n" "$pad" "" "$s"
}

frame() {
  local A="$1" B="$2" C="$3"
  clear
  printf "\n"
  center "${DIM}${A}✦✧✦${RST}  ${BOLD}${SUN}🌼  Nam Mô A Di Đà Phật  🌼${RST}  ${DIM}${A}✦✧✦${RST}"
  center "${BOLD}${B}✨  Hào quang vô lượng chiếu tâm  ✨${RST}"
  center "${DIM}${GRAY}────────────────────────────────────────${RST}"
  printf "\n"
  center "${C}Nam mô A di đa bà dạ${RST}   ${DIM}${GRAY}# 南無阿彌多婆夜${RST}"
  center "${C}Đa tha dà đa dạ${RST}       ${DIM}${GRAY}# 多他伽多夜${RST}"
  center "${C}Ta bà ha${RST}              ${DIM}${GRAY}# 娑婆訶${RST}"
  printf "\n"
  center "${DIM}${GRAY}WSL · an trú · tĩnh sáng · làm việc như tu tập${RST}"
  printf "\n"
}

# shimmer (đổi sắc nhẹ)
frame "$LAV" "$PINK" "$SKY";  sleep_s 0.18
frame "$SKY" "$MINT" "$PINK"; sleep_s 0.18
frame "$MINT" "$LAV" "$SKY";  sleep_s 0.18
frame "$PINK" "$SKY" "$MINT"; sleep_s 0.18
frame "$LAV" "$PINK" "$SKY";  sleep_s 0.18
