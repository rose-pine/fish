# Rosé Pine theme for pure prompt
# https://github.com/rose-pine/fish
#
# Automatically applies Rosé Pine colors to pure prompt
# when a Rosé Pine fish theme is active.

type -q _pure_prompt; or return 0

function _rose_pine_pure_primary --on-variable fish_color_rose
    set -q fish_color_rose[1]; or return 0
    set -g pure_color_primary $fish_color_rose[1]
end

function _rose_pine_pure_info --on-variable fish_color_foam
    set -q fish_color_foam[1]; or return 0
    set -g pure_color_info $fish_color_foam[1]
end

function _rose_pine_pure_mute --on-variable fish_color_subtle
    set -q fish_color_subtle[1]; or return 0
    set -g pure_color_mute $fish_color_subtle[1]
end

function _rose_pine_pure_success --on-variable fish_color_iris
    set -q fish_color_iris[1]; or return 0
    set -g pure_color_success $fish_color_iris[1]
end

function _rose_pine_pure_danger --on-variable fish_color_love
    set -q fish_color_love[1]; or return 0
    set -g pure_color_danger $fish_color_love[1]
end

function _rose_pine_pure_warning --on-variable fish_color_gold
    set -q fish_color_gold[1]; or return 0
    set -g pure_color_warning $fish_color_gold[1]
end

function _rose_pine_pure_light --on-variable fish_color_text
    set -q fish_color_text[1]; or return 0
    set -g pure_color_light $fish_color_text[1]
end

function _rose_pine_pure_dark --on-variable fish_color_pine
    set -q fish_color_pine[1]; or return 0
    set -g pure_color_dark $fish_color_pine[1]
end

# Apply on load
_rose_pine_pure_primary
_rose_pine_pure_info
_rose_pine_pure_mute
_rose_pine_pure_success
_rose_pine_pure_danger
_rose_pine_pure_warning
_rose_pine_pure_light
_rose_pine_pure_dark
