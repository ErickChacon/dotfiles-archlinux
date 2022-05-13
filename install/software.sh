# music daemon (it instals also ffmpeg)
pacman -S mpd mpc ncmpcpp
# mpd: the main music daemon
# mpc: command client of mpd
# ncmpcpp: simple gui client of mpd

# svg editor
pacman -S inkscape

# web browser
yay -S brave-bin
# you can choose the fonts uwing brave settings

# brightness
yay -S backlight_control

#  volume
pamixer -i 3
pamixer -d 3
pamixer -t

# fix time
timedatectl set-ntp true
# 1. define your timezone (timedatectl set-timezone ...)
# 2. syn time with set-ntp (timedatectl set-ntp true)
# 3. right time to bios (hwclock -- systohc)

# rclone
pacman -S rclone
# rclone config

# image viewer
pacman -S sxiv

# image editor
pacman -S gimp

# spreadsheet
yay -S sc-im

# pdf viewer
pacman -S zathura zathura-pdf-mupdf
# pdf functions
pacman -S poppler

# fuzy finder
pacman -S fzf

# teams
yay -S teams
# remember to disable "On close, keep the applications running" to be able to close teams

# bittorrent
pacman -S transmission-cli

# docker
pacman -S docker docker-compose
sudo usermod -a -G docker $USER
systemctl enable --now docker.service
# restart

# bluetooth
pacman -S bluez bluez-utils
# systemctl start bluetooth

# xp-pen tablet
yay -S xp-pen-tablet
pacman -S xournalpp

# zsh
pacman -S zsh zsh-syntax-highlighting
zsh # to configure for the first time

#  tabbed
git clone https://git.suckless.org/tabbed
sudo make clean install

# bluetooth
# /etc/bluetooth/main.conf
# [Policy]
# AutoEnable=true

# libreoffice: remember to upgrade your system before inslatting libreoffice
pacman -S libreoffice-fresh

# neovim
pacman -S python-pynvim neovim

# video player
pacman -S mpv
