#!/usr/bin/env sh

npx @rose-pine/build@latest -f hex-ns -t ./source.theme -o ./themes
mv ./themes/rose-pine.theme "./themes/Rosé Pine.theme"
mv ./themes/rose-pine-dawn.theme "./themes/Rosé Pine Dawn.theme"
mv ./themes/rose-pine-moon.theme "./themes/Rosé Pine Moon.theme"
