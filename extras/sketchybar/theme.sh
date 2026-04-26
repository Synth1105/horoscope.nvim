#!/bin/bash

if [[ "$COLOR_SCHEME" == "horoscope" ]]; then
  if [[ $BAR_TRANSPARENCY == true ]]; then
    TFrate=160
  else
    TFrate=255
  fi

  TFp=$(echo "obase=16; $TFrate" | bc)
  [ $((TFrate + 20)) -lt 255 ] && TFrate=$(($TFrate + 20))
  TFs=$(echo "obase=16; $TFrate" | bc)

  export BASE=0x${TFp}21202f
  export SURFACE=0x${TFp}28283a
  export OVERLAY=0x${TFp}2d2c40
  export MUTED=0x${TFp}6d697e
  export HIGH_LOW=0x${TFs}28283a
  export HIGH_MED=0x${TFs}35344c
  export HIGH_HIGH=0x${TFs}4c4a67
  export SUBTLE=0xffa29fb0
  export TEXT=0xffbec2d4
  export CRITICAL=0xfff39aad
  export NOTICE=0xfff8e18a
  export WARN=0xfff08e89
  export SELECT=0xff4bb6a8
  export GLOW=0xff7ff6ff
  export ACTIVE=0xffb391d2

  export BLACK=0xff14161b
  export TRANSPARENT=0x00000000

  if [ "$(echo "$OS_VERSION" | awk -F. '{print $1}')" -gt 15 ]; then
    export BAR_COLOR=0x${TFp}21202f
    export BORDER_COLOR=0x604c4a67
  else
    export BAR_COLOR=0x${TFp}28283a
    export BORDER_COLOR=0x${TFp}4c4a67
  fi

  export ICON_COLOR=$TEXT
  export LABEL_COLOR=$TEXT

  export POPUP_BACKGROUND_COLOR=0x${TFp}2d2c40
  export POPUP_BORDER_COLOR=$HIGH_MED

  export SHADOW_COLOR=$TEXT
fi
