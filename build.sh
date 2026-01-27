#!/usr/bin/env sh

npx @rose-pine/build@latest -f hex-ns -t ./source.theme -o ./themes
mv ./themes/rose-pine.theme "./themes/Rosé Pine.theme"
mv ./themes/rose-pine-dawn.theme "./themes/Rosé Pine Dawn.theme"
mv ./themes/rose-pine-moon.theme "./themes/Rosé Pine Moon.theme"

# Create color-theme-aware "Auto" themes for fish 4.3+
# These automatically switch between dark and light variants based on terminal background

create_auto_theme() {
	dark_theme="$1"
	light_theme="$2"
	output="$3"

	{
		echo "[dark]"
		cat "$dark_theme"
		echo ""
		echo "[light]"
		cat "$light_theme"
	} >"$output"
}

create_auto_theme "./themes/Rosé Pine.theme" "./themes/Rosé Pine Dawn.theme" "./themes/Rosé Pine Auto.theme"
create_auto_theme "./themes/Rosé Pine Moon.theme" "./themes/Rosé Pine Dawn.theme" "./themes/Rosé Pine Moon Auto.theme"
