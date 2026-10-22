# Rosé Pine theme for Tide prompt
# https://github.com/rose-pine/fish
#
# Automatically applies Rosé Pine colors to Tide prompt
# when a Rosé Pine fish theme is active.

if type -q tide
    # Tide doesn't persist the configured style. Lean and Classic give every
    # segment the same background, Rainbow doesn't. Read the universal values,
    # since the globals below shadow them. Without universal values, Tide was
    # set up elsewhere; keep the Rainbow colors this theme always applied.
    function _rose_pine_tide_rainbow
        set -Uq tide_pwd_bg_color; or return 0
        set -l pwd (set -U | string match -rg '^tide_pwd_bg_color (.*)')
        set -l git (set -U | string match -rg '^tide_git_bg_color (.*)')
        test "$pwd" != "$git"
    end

    set -g _rose_pine_tide_langs node python go rustc ruby java php elixir crystal zig bun \
        aws gcloud kubectl terraform pulumi docker distrobox toolbox

    function _rose_pine_tide_base --on-variable fish_color_base
        set -q fish_color_base[1]; or return 0
        _rose_pine_tide_rainbow; or return 0
        set -l base $fish_color_base[1]

        # All segment foreground colors use base
        set -gx tide_os_color $base
        set -gx tide_pwd_color_anchors $base
        set -gx tide_pwd_color_dirs $base
        set -gx tide_pwd_color_truncated_dirs $base
        set -gx tide_git_color_branch $base
        set -gx tide_git_color_conflicted $base
        set -gx tide_git_color_dirty $base
        set -gx tide_git_color_operation $base
        set -gx tide_git_color_staged $base
        set -gx tide_git_color_stash $base
        set -gx tide_git_color_untracked $base
        set -gx tide_git_color_upstream $base
        set -gx tide_status_color $base
        set -gx tide_status_color_failure $base
        set -gx tide_cmd_duration_color $base
        set -gx tide_time_color $base
        set -gx tide_context_color_default $base
        set -gx tide_context_color_root $base
        set -gx tide_context_color_ssh $base
        set -gx tide_jobs_color $base
        for lang in $_rose_pine_tide_langs
            set -gx tide_"$lang"_color $base
        end
        set -gx tide_direnv_color $base
        set -gx tide_direnv_color_denied $base
        set -gx tide_nix_shell_color $base
        set -gx tide_shlvl_color $base
        set -gx tide_private_mode_color $base
        set -gx tide_vi_mode_color_default $base
        set -gx tide_vi_mode_color_insert $base
        set -gx tide_vi_mode_color_replace $base
        set -gx tide_vi_mode_color_visual $base
    end

    function _rose_pine_tide_iris --on-variable fish_color_iris
        set -q fish_color_iris[1]; or return 0
        set -l iris $fish_color_iris[1]
        if _rose_pine_tide_rainbow
            set -gx tide_os_bg_color $iris
            set -gx tide_cmd_duration_bg_color $iris
            set -gx tide_time_bg_color $iris
            set -gx tide_context_bg_color $iris
            set -gx tide_vi_mode_bg_color_visual $iris
        else
            # Drop backgrounds from an earlier Rainbow run; the exports even
            # survive exec fish and would hide Tide's own universal values.
            set -eg tide_os_bg_color tide_cmd_duration_bg_color tide_time_bg_color \
                tide_context_bg_color tide_vi_mode_bg_color_visual
            set -gx tide_os_color $iris
            set -gx tide_cmd_duration_color $iris
            set -gx tide_time_color $iris
            set -gx tide_context_color_default $iris
            set -gx tide_context_color_ssh $iris
            set -gx tide_vi_mode_color_visual $iris
        end
    end

    function _rose_pine_tide_foam --on-variable fish_color_foam
        set -q fish_color_foam[1]; or return 0
        set -l foam $fish_color_foam[1]
        if _rose_pine_tide_rainbow
            set -gx tide_pwd_bg_color $foam
            set -gx tide_git_bg_color $foam
            set -gx tide_status_bg_color $foam
            set -gx tide_direnv_bg_color $foam
            set -gx tide_nix_shell_bg_color $foam
            set -gx tide_vi_mode_bg_color_insert $foam
        else
            set -eg tide_pwd_bg_color tide_git_bg_color tide_status_bg_color \
                tide_direnv_bg_color tide_nix_shell_bg_color tide_vi_mode_bg_color_insert
            set -gx tide_pwd_color_anchors $foam
            set -gx tide_pwd_color_dirs $foam
            set -gx tide_git_color_branch $foam
            set -gx tide_git_color_stash $foam
            set -gx tide_git_color_upstream $foam
            set -gx tide_status_color $foam
            set -gx tide_direnv_color $foam
            set -gx tide_nix_shell_color $foam
            set -gx tide_vi_mode_color_insert $foam
        end
    end

    function _rose_pine_tide_love --on-variable fish_color_love
        set -q fish_color_love[1]; or return 0
        set -l love $fish_color_love[1]
        set -gx tide_character_color_failure $love
        if _rose_pine_tide_rainbow
            set -gx tide_git_bg_color_urgent $love
            set -gx tide_status_bg_color_failure $love
            set -gx tide_direnv_bg_color_denied $love
            set -gx tide_private_mode_bg_color $love
        else
            set -eg tide_git_bg_color_urgent tide_status_bg_color_failure \
                tide_direnv_bg_color_denied tide_private_mode_bg_color
            set -gx tide_git_color_conflicted $love
            set -gx tide_git_color_operation $love
            set -gx tide_status_color_failure $love
            set -gx tide_direnv_color_denied $love
            set -gx tide_private_mode_color $love
        end
    end

    function _rose_pine_tide_gold --on-variable fish_color_gold
        set -q fish_color_gold[1]; or return 0
        set -l gold $fish_color_gold[1]
        if _rose_pine_tide_rainbow
            set -gx tide_git_bg_color_unstable $gold
            set -gx tide_jobs_bg_color $gold
            set -gx tide_shlvl_bg_color $gold
        else
            set -eg tide_git_bg_color_unstable tide_jobs_bg_color tide_shlvl_bg_color
            set -gx tide_git_color_dirty $gold
            set -gx tide_git_color_staged $gold
            set -gx tide_git_color_untracked $gold
            set -gx tide_context_color_root $gold
            set -gx tide_jobs_color $gold
            set -gx tide_shlvl_color $gold
        end
    end

    function _rose_pine_tide_pine --on-variable fish_color_pine
        set -q fish_color_pine[1]; or return 0
        set -l pine $fish_color_pine[1]
        set -gx tide_character_color $pine
        if _rose_pine_tide_rainbow
            for lang in $_rose_pine_tide_langs
                set -gx tide_"$lang"_bg_color $pine
            end
            set -gx tide_vi_mode_bg_color_default $pine
        else
            set -eg tide_{$_rose_pine_tide_langs}_bg_color tide_vi_mode_bg_color_default
            for lang in $_rose_pine_tide_langs
                set -gx tide_"$lang"_color $pine
            end
            set -gx tide_vi_mode_color_default $pine
        end
    end

    function _rose_pine_tide_rose --on-variable fish_color_rose
        set -q fish_color_rose[1]; or return 0
        if _rose_pine_tide_rainbow
            set -gx tide_vi_mode_bg_color_replace $fish_color_rose[1]
        else
            set -eg tide_vi_mode_bg_color_replace
            set -gx tide_vi_mode_color_replace $fish_color_rose[1]
        end
    end

    function _rose_pine_tide_subtle --on-variable fish_color_subtle
        set -q fish_color_subtle[1]; or return 0
        set -l subtle $fish_color_subtle[1]
        set -gx tide_prompt_color_frame_and_connection $subtle
        set -gx tide_prompt_color_separator_same_color $subtle
        if not _rose_pine_tide_rainbow
            set -gx tide_pwd_color_truncated_dirs $subtle
        end
    end

    # Apply on load
    _rose_pine_tide_base
    _rose_pine_tide_iris
    _rose_pine_tide_foam
    _rose_pine_tide_love
    _rose_pine_tide_gold
    _rose_pine_tide_pine
    _rose_pine_tide_rose
    _rose_pine_tide_subtle
end
