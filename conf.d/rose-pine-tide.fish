# Rosé Pine theme for Tide prompt
# https://github.com/rose-pine/fish
#
# Automatically applies Rosé Pine colors to Tide prompt
# when a Rosé Pine fish theme is active.

type -q tide; or return

function _rose_pine_tide_base --on-variable fish_color_base
    set -q fish_color_base[1]; or return
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
    set -gx tide_node_color $base
    set -gx tide_python_color $base
    set -gx tide_go_color $base
    set -gx tide_rustc_color $base
    set -gx tide_ruby_color $base
    set -gx tide_java_color $base
    set -gx tide_php_color $base
    set -gx tide_elixir_color $base
    set -gx tide_crystal_color $base
    set -gx tide_zig_color $base
    set -gx tide_bun_color $base
    set -gx tide_aws_color $base
    set -gx tide_gcloud_color $base
    set -gx tide_kubectl_color $base
    set -gx tide_terraform_color $base
    set -gx tide_pulumi_color $base
    set -gx tide_docker_color $base
    set -gx tide_distrobox_color $base
    set -gx tide_toolbox_color $base
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
    set -q fish_color_iris[1]; or return
    set -l iris $fish_color_iris[1]
    set -gx tide_os_bg_color $iris
    set -gx tide_cmd_duration_bg_color $iris
    set -gx tide_time_bg_color $iris
    set -gx tide_context_bg_color $iris
    set -gx tide_vi_mode_bg_color_visual $iris
end

function _rose_pine_tide_foam --on-variable fish_color_foam
    set -q fish_color_foam[1]; or return
    set -l foam $fish_color_foam[1]
    set -gx tide_pwd_bg_color $foam
    set -gx tide_git_bg_color $foam
    set -gx tide_status_bg_color $foam
    set -gx tide_direnv_bg_color $foam
    set -gx tide_nix_shell_bg_color $foam
    set -gx tide_vi_mode_bg_color_insert $foam
end

function _rose_pine_tide_love --on-variable fish_color_love
    set -q fish_color_love[1]; or return
    set -l love $fish_color_love[1]
    set -gx tide_git_bg_color_urgent $love
    set -gx tide_character_color_failure $love
    set -gx tide_status_bg_color_failure $love
    set -gx tide_direnv_bg_color_denied $love
    set -gx tide_private_mode_bg_color $love
end

function _rose_pine_tide_gold --on-variable fish_color_gold
    set -q fish_color_gold[1]; or return
    set -l gold $fish_color_gold[1]
    set -gx tide_git_bg_color_unstable $gold
    set -gx tide_jobs_bg_color $gold
    set -gx tide_shlvl_bg_color $gold
end

function _rose_pine_tide_pine --on-variable fish_color_pine
    set -q fish_color_pine[1]; or return
    set -l pine $fish_color_pine[1]
    set -gx tide_character_color $pine
    set -gx tide_node_bg_color $pine
    set -gx tide_python_bg_color $pine
    set -gx tide_go_bg_color $pine
    set -gx tide_rustc_bg_color $pine
    set -gx tide_ruby_bg_color $pine
    set -gx tide_java_bg_color $pine
    set -gx tide_php_bg_color $pine
    set -gx tide_elixir_bg_color $pine
    set -gx tide_crystal_bg_color $pine
    set -gx tide_zig_bg_color $pine
    set -gx tide_bun_bg_color $pine
    set -gx tide_aws_bg_color $pine
    set -gx tide_gcloud_bg_color $pine
    set -gx tide_kubectl_bg_color $pine
    set -gx tide_terraform_bg_color $pine
    set -gx tide_pulumi_bg_color $pine
    set -gx tide_docker_bg_color $pine
    set -gx tide_distrobox_bg_color $pine
    set -gx tide_toolbox_bg_color $pine
    set -gx tide_vi_mode_bg_color_default $pine
end

function _rose_pine_tide_rose --on-variable fish_color_rose
    set -q fish_color_rose[1]; or return
    set -gx tide_vi_mode_bg_color_replace $fish_color_rose[1]
end

function _rose_pine_tide_subtle --on-variable fish_color_subtle
    set -q fish_color_subtle[1]; or return
    set -l subtle $fish_color_subtle[1]
    set -gx tide_prompt_color_frame_and_connection $subtle
    set -gx tide_prompt_color_separator_same_color $subtle
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
