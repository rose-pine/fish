# syntax highlighting variables
# https://fishshell.com/docs/current/interactive.html#syntax-highlighting-variables
set -gx fish_color_normal $text
set -gx fish_color_command $iris
set -gx fish_color_keyword $foam
set -gx fish_color_quote $gold
set -gx fish_color_redirection $pine
set -gx fish_color_end $subtle
set -gx fish_color_error $love
set -gx fish_color_param $rose
set -gx fish_color_comment $subtle
# set -gx fish_color_match --background=brblue
set -gx fish_color_selection --reverse
# set -gx fish_color_history_current --bold
set -gx fish_color_operator $text
set -gx fish_color_escape $pine
set -gx fish_color_autosuggestion $subtle
set -gx fish_color_cwd $rose
# set -gx fish_color_cwd_root red
set -gx fish_color_user $gold
set -gx fish_color_host $foam
set -gx fish_color_host_remote $iris
set -gx fish_color_cancel $text
set -gx fish_color_search_match --background=$base
set -gx fish_color_valid_path

# pager color variables
# https://fishshell.com/docs/current/interactive.html#pager-color-variables
set -gx fish_pager_color_progress $rose
set -gx fish_pager_color_background --background=$surface
set -gx fish_pager_color_prefix $foam
set -gx fish_pager_color_completion $subtle
set -gx fish_pager_color_description $subtle
set -gx fish_pager_color_secondary_background
set -gx fish_pager_color_secondary_prefix
set -gx fish_pager_color_secondary_completion
set -gx fish_pager_color_secondary_description
set -gx fish_pager_color_selected_background --background=$overlay
set -gx fish_pager_color_selected_prefix $foam
set -gx fish_pager_color_selected_completion $text
set -gx fish_pager_color_selected_description $text
