# bluetooth
sudo pacman -S bluez bluez-utils
systemctl start bluetooth.service

# pairing
bluetoothctl
# default-agent
# power on
# scan on
# pair 6C:93:08:61:87:1E
# connect 6C:93:08:61:87:1E
# trust 6C:93:08:61:87:1E

# enable bluetooth from next startup
systemctl enable bluetooth.service
