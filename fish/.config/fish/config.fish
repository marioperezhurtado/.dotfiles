set -Ux EDITOR nvim

fish_vi_key_bindings

# Start hyprland on tty1
if set -q AUTO_START_HYPRLAND; and test -z "$DISPLAY"; and test (tty) = /dev/tty1
    exec start-hyprland 
end

alias la="ls -la"
alias v="nvim ."
alias oc="opencode"
