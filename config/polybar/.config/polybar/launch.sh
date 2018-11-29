#!/usr/bin/env bash

killall -q polybar
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

if [[ $(hostname) == 'cat-desktop' ]]; then
  polybar dvii0top &
  polybar dvii0bottom &
  polybar dvid0top &
  polybar dvid0bottom &
elif [[ $(hostname) == 'cat-laptop' ]]; then
  polybar laptoptop &
  polybar laptopbottom &
fi

echo "Bars launched..."
