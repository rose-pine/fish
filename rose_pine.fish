function rose_pine -a theme -d "Set Rosé Pine theme"
	set -L

	switch $theme
		case 'dawn'
			set base faf4ed
			set surface fffaf3
			set overlay f2e9de
			set inactive 9893a5
			set subtle 6e6a86
			set text 575279
			set love b4637a
			set gold ea9d34
			set rose d7827e
			set pine 286983
			set foam 56949f
			set iris 907aa9
		case 'moon'
			set base 232136
			set surface 2a273f
			set overlay 393552
			set inactive 59546d
			set subtle 817c9c
			set text e0def4
			set love eb6f92
			set gold f6c177
			set rose ea9a97
			set pine 3e8fb0
			set foam 9ccfd8
			set iris c4a7e7
		case '*'
			set base 191724
			set surface 1f1d2e
			set overlay 26233a
			set inactive 555169
			set subtle 6e6a86
			set text e0def4
			set love eb6f92
			set gold f6c177
			set rose ebbcba
			set pine 31748f
			set foam 9ccfd8
			set iris c4a7e7
	end

	set -U fish_color_normal normal
	set -U fish_color_command $iris
	set -U fish_color_quote $gold
	set -U fish_color_redirection $pine
	set -U fish_color_end $iris
	set -U fish_color_error $love
	set -U fish_color_param $text
	set -U fish_color_comment $subtle
	set -U fish_color_match --background=brblue
	set -U fish_color_selection white --bold --background=brblack
	set -U fish_color_search_match bryellow --background=brblack
	set -U fish_color_history_current --bold
	set -U fish_color_operator $foam
	set -U fish_color_escape $foam
	set -U fish_color_cwd green
	set -U fish_color_cwd_root red
	set -U fish_color_valid_path --underline
	set -U fish_color_autosuggestion $subtle
	set -U fish_color_user brgreen
	set -U fish_color_host normal
	set -U fish_color_cancel -r
	set -U fish_pager_color_completion normal
	set -U fish_pager_color_description $rose yellow
	set -U fish_pager_color_prefix white --bold --underline
	set -U fish_pager_color_progress brwhite --background=cyan

	clear
end

