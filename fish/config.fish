# Start hyprland on tty1
if test -z "$DISPLAY"; and test (tty) = /dev/tty1
    exec start-hyprland 
end

alias la="ls -la"
alias v="nvim ."
