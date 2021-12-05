#!/bin/sh

# Helper script to copy all the Chrome icons from a host installation

for icon in /usr/share/icons/hicolor/*/apps/opera.png; do
  size=$(echo $icon | grep -Po '\d+x\K\d+')
  cp $icon com.opera.Opera-$size.png
done