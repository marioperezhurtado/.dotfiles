# Start hyprland on tty1
if test -z "$DISPLAY"; and test (tty) = /dev/tty1
    exec start-hyprland 
end

abbr -a la "ls -a"
abbr -a v "nvim ."
