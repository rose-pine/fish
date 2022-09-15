# syntax highlighting variables
# https://fishshell.com/docs/current/interactive.html#syntax-highlighting-variables
set -gx fish_color_normal normal
set -gx fish_color_command $iris
# set -gx fish_color_keyword $iris
set -gx fish_color_quote $gold
set -gx fish_color_redirection $pine
set -gx fish_color_end $iris
set -gx fish_color_error $love
set -gx fish_color_param $text
set -gx fish_color_comment $subtle
# set -gx fish_color_match --background=brblue
set -gx fish_color_selection white --bold --background=brblack
# set -gx fish_color_search_match bryellow --background=brblack
# set -gx fish_color_history_current --bold
set -gx fish_color_operator $foam
set -gx fish_color_escape $foam
set -gx fish_color_autosuggestion $subtle
set -gx fish_color_cwd green
# set -gx fish_color_cwd_root red
# set -gx fish_color_valid_path --underline
set -gx fish_color_user brgreen
set -gx fish_color_host normal
# set -gx fish_color_host_remote magenta
set -gx fish_color_cancel -r

# pager color variables
# https://fishshell.com/docs/current/interactive.html#pager-color-variables
set -gx fish_pager_color_progress cyan
set -gx fish_pager_color_background
set -gx fish_pager_color_prefix blue
set -gx fish_pager_color_completion normal
set -gx fish_pager_color_description normal
set -gx fish_pager_color_selected_background --reverse
set -gx fish_pager_color_selected_prefix
set -gx fish_pager_color_selected_completion
set -gx fish_pager_color_selected_description
set -gx fish_pager_color_secondary_background
set -gx fish_pager_color_secondary_prefix blue
set -gx fish_pager_color_secondary_completion normal
set -gx fish_pager_color_secondary_description normal
# set -gx fish_pager_color_completion normal
# set -gx fish_pager_color_description $rose yellow
# set -gx fish_pager_color_prefix white --bold --underline
# set -gx fish_pager_color_progress brwhite --background=cyan
