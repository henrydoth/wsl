#!/usr/bin/env bash
[[ -t 1 ]] || exit 0

ESC=$'\033'
RST="${ESC}[0m"
BOLD="${ESC}[1m"
DIM="${ESC}[2m"

# Header colors
SUN="${ESC}[38;2;255;215;120m"
PINK="${ESC}[38;2;255;140;210m"
GRAY="${ESC}[38;2;170;170;170m"

# Each-line Vietnamese colors (tươi vui)
C1="${ESC}[38;2;120;210;255m"   # sky
C2="${ESC}[38;2;160;255;200m"   # mint
C3="${ESC}[38;2;200;170;255m"   # lavender
C4="${ESC}[38;2;255;180;120m"   # orange
C5="${ESC}[38;2;255;150;200m"   # pink
C6="${ESC}[38;2;140;220;255m"   # blue
C7="${ESC}[38;2;180;255;140m"   # green
C8="${ESC}[38;2;255;210;130m"   # warm yellow
C9="${ESC}[38;2;170;200;255m"   # periwinkle
C10="${ESC}[38;2;255;170;140m"  # coral
C11="${ESC}[38;2;255;230;160m"  # pale sun

# Chinese (Hán) colors per line: hơi đậm hơn 1 chút để “nổi”
H1="${ESC}[38;2;80;170;230m"
H2="${ESC}[38;2;110;230;170m"
H3="${ESC}[38;2;170;140;230m"
H4="${ESC}[38;2;230;150;90m"
H5="${ESC}[38;2;230;110;170m"
H6="${ESC}[38;2;70;190;240m"
H7="${ESC}[38;2;130;220;90m"
H8="${ESC}[38;2;230;190;90m"
H9="${ESC}[38;2;130;160;240m"
H10="${ESC}[38;2;240;140;110m"
H11="${ESC}[38;2;240;210;120m"

center() {
  local s="$1"
  local cols="${COLUMNS:-80}"
  local len="${#s}"
  local pad=$(( (cols - len) / 2 ))
  (( pad < 0 )) && pad=0
  printf "%*s%s\n" "$pad" "" "$s"
}

# In 1 dòng (VN | HAN) đã có màu riêng
line() {
  local vn_color="$1" han_color="$2" vn="$3" han="$4"
  center "${vn_color}${vn}${RST}   ${DIM}${han_color}# ${han}${RST}"
}

clear
printf "\n"
center "${SUN}${BOLD}🌼  Nam Mô A Di Đà Phật  🌼${RST}"
center "${PINK}${BOLD}✨  Hào quang vô lượng chiếu tâm  ✨${RST}"
center "${DIM}${GRAY}────────────────────────────────────────${RST}"
printf "\n"

line "$C1"  "$H1"  "Nam mô A di đa bà dạ"              "南無阿彌多婆夜"
line "$C2"  "$H2"  "Đa tha dà đa dạ"                  "多他伽多夜"
line "$C3"  "$H3"  "Đa điệt dạ tha"                   "多地夜他"
printf "\n"
line "$C4"  "$H4"  "A di rị đô bà tỳ"                 "阿彌唎都婆毘"
line "$C5"  "$H5"  "A di rị đa tất đam bà tỳ"         "阿彌唎多悉耽婆毘"
line "$C6"  "$H6"  "A di rị đa tỳ ca lan đế"          "阿彌唎多毘迦蘭帝"
line "$C7"  "$H7"  "A di rị đa tỳ ca lan đà"          "阿彌唎多毘迦蘭陀"
printf "\n"
line "$C8"  "$H8"  "Dà di nị"                          "伽地膩"
line "$C9"  "$H9"  "Dà dà na"                          "伽伽那"
line "$C10" "$H10" "Chỉ đa ca lệ"                      "枳多迦唎"
center "${C11}${BOLD}Ta bà ha${RST}   ${DIM}${H11}# 娑婆訶${RST}"

printf "\n"
center "${DIM}${GRAY}WSL · an trú · tĩnh sáng · làm việc như tu tập${RST}"
printf "\n"
