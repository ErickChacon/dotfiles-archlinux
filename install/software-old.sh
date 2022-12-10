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

# bittorrent
pacman -S transmission-cli

# bluetooth
pacman -S bluez bluez-utils
# systemctl start bluetooth

# bluetooth
# /etc/bluetooth/main.conf
# [Policy]
# AutoEnable=true
