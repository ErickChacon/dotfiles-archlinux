
# # keyboard
# localectl status
sudo pacman -S libxkbcommon libxkbcommon-x11
localectl --no-convert set-x11-keymap gb pc105 "" ctrl:swapcaps
# # setxkbmap -model pc105 -layout gb -option ctrl:swapcaps
localectl status

