# keyboard
sudo pacman -S libxkbcommon libxkbcommon-x11
sudo localectl --no-convert set-x11-keymap gb pc105 "" ctrl:swapcaps
localectl status

# old config
# setxkbmap -model pc105 -layout gb -option ctrl:swapcaps

