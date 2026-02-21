#!/usr/bin/env bash
[[ -t 1 ]] || exit 0

RST="\033[0m"; DIM="\033[2m"; BOLD="\033[1m"
GOLD="\033[38;5;220m"; PINK="\033[38;5;213m"
VIO="\033[38;5;141m"; SKY="\033[38;5;117m"
MINT="\033[38;5;121m"; GRAY="\033[38;5;245m"

sleep_s() { perl -e "select(undef,undef,undef,$1)"; } 2>/dev/null || sleep_s(){ sleep "$1"; }

center_line() {
  local s="$1" cols="${COLUMNS:-80}" len="${#s}"
  local pad=$(( (cols - len) / 2 )); (( pad < 0 )) && pad=0
  printf "%*s%s\n" "$pad" "" "$s"
}

halo_frame() {
  local phase="$1" ring1 ring2 ring3
  case "$phase" in
    0) ring1="${DIM}${VIO}···"; ring2="${PINK}✦✦"; ring3="${GOLD}✧" ;;
    1) ring1="${DIM}${PINK}···"; ring2="${VIO}✦✦"; ring3="${GOLD}✦" ;;
    2) ring1="${DIM}${SKY}···"; ring2="${PINK}✦✦"; ring3="${GOLD}✧" ;;
    3) ring1="${DIM}${MINT}···"; ring2="${SKY}✦✦"; ring3="${GOLD}✦" ;;
    *) ring1="${DIM}${VIO}···"; ring2="${PINK}✦✦"; ring3="${GOLD}✧" ;;
  esac

  clear; echo ""
  center_line "${ring1} ${ring2} ${ring3}${RST}"
  center_line "${GOLD}${BOLD}🌼  Nam Mô A Di Đà Phật  🌼${RST}"
  center_line "${PINK}✨  Hào quang vô lượng chiếu tâm  ✨${RST}"
  center_line "${DIM}${GRAY}-----------------------------------------${RST}"
  echo ""
  center_line "${SKY}Nam mô A di đa bà dạ${RST}   ${DIM}${GRAY}# 南無阿彌多婆夜${RST}"
  center_line "${SKY}Đa tha dà đa dạ${RST}       ${DIM}${GRAY}# 多他伽多夜${RST}"
  center_line "${SKY}Ta bà ha${RST}              ${DIM}${GRAY}# 娑婆訶${RST}"
  echo ""
  center_line "${DIM}${GRAY}WSL · an trú · tĩnh sáng · làm việc như tu tập${RST}"
}

for i in 0 1 2 3 2 1; do
  halo_frame "$i"
  sleep_s 0.20
done
