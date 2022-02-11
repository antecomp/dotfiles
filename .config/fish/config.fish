thefuck --alias | source
set theme_color_scheme nord 
set theme_display_date no
# set -g theme_display_hostname yes
# set -g theme_display_user yes
# set -g theme_newline_prompt '> '
set -g theme_display_git yes
set -g theme_display_vi yes

# Generated for envman. Do not edit.
test -s "$HOME/.config/envman/load.fish"; and source "$HOME/.config/envman/load.fish"

# Zoxide
zoxide init fish | source
