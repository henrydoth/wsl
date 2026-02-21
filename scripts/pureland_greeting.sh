#!/usr/bin/env bash
# PureLand Greeting (text glow) - WSL
# - chữ màu + hiệu ứng shimmer nhẹ
# - không phụ thuộc gói ngoài (có perl thì mượt hơn)

[[ -t 1 ]] || exit 0

# ---- Colors ----
RST="\033[0m"
DIM="\033[2m"
BOLD="\033[1m"

GOLD="\033[38;5;220m"
PINK="\033[38;5;213m"
VIO="\033[38;5;141m"
SKY="\033[38;5;117m"
MINT="\033[38;5;121m"
GRAY="\033[38;5;245m"
WHITE="\033[38;5;255m"

# ---- micro-sleep ----
sleep_s() { perl -e "select(undef,undef,undef,$1)"; } 2>/dev/null || sleep_s(){ sleep "$1"; }

# ---- center ----
center() {
  local s="$1"
  local cols="${COLUMNS:-80}"
  local len="${#s}"
  local pad=$(( (cols - len) / 2 ))
  (( pad < 0 )) && pad=0
  printf "%*s%s\n" "$pad" "" "$s"
}

print_block() {
  local accent="$1" halo="$2"
  clear
  echo ""
  center "${halo}${BOLD}🌼  Nam Mô A Di Đà Phật  🌼${RST}"
  center "${accent}${BOLD}✨  Hào quang vô lượng chiếu tâm  ✨${RST}"
  center "${DIM}${GRAY}----------------------------------------${RST}"
  echo ""
  center "${SKY}Nam mô A di đa bà dạ${RST}   ${DIM}${GRAY}# 南無阿彌多婆夜${RST}"
  center "${SKY}Đa tha dà đa dạ${RST}       ${DIM}${GRAY}# 多他伽多夜${RST}"
  center "${SKY}Ta bà ha${RST}              ${DIM}${GRAY}# 娑婆訶${RST}"
  echo ""
  center "${DIM}${GRAY}WSL · an trú · tĩnh sáng · làm việc như tu tập${RST}"
  echo ""
}

# ---- shimmer frames (text-only glow) ----
# đổi màu nhấn qua vài frame để tạo cảm giác "hào quang"
print_block "$PINK" "$GOLD"; sleep_s 0.18
print_block "$VIO"  "$GOLD"; sleep_s 0.18
print_block "$SKY"  "$GOLD"; sleep_s 0.18
print_block "$MINT" "$GOLD"; sleep_s 0.18
print_block "$PINK" "$GOLD"; sleep_s 0.18

# giữ lại frame cuối để user làm việc (không clear nữa)
