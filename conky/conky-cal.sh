#!/bin/bash
TODAY=$(date +%A)
gcalcli --conky --lineart unicode calw 2>/dev/null | sed \
  "s/\${color red}/\${color FF8C00}/g; \
   s/\${color yellow}/\${color 00FFD0}/g; \
   s/\${color cyan}/\${color white}/g; \
   s/\${color magenta}/\${color white}/g; \
   s/\${color}/\${color 00CED1}/g" | \
  sed "s/\([0-9]\{1,2\}:[0-9]\{2\}\)/\${color 00CED1}\1\${color white}/g" | \
  sed "s/\${color 00FFD0}${TODAY}/\${color FF8C00}${TODAY}/g"
