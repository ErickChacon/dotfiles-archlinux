
# add resume to the mkinitcpio hooks
# nvim /etc/mkinitcpio.conf
sudoedit /etc/mkinitcpio.conf
# HOOKS=(base udev autodetect keyboard keymap consolefont modconf block encrypt lvm2 filesystems resume fsck)
mkinitcpio -p linux

# set up grub for encrypted lvm partition
nvim /etc/default/grub
# GRUB_CMDLINE_LINUX="cryptdevice=UUID=myuuid:cryptlvm root=/dev/MyVolGroup/root resume=/dev/MyVolGroup/swap"
grub-mkconfig -o /boot/grub/grub.cfg

# hibernate when inactive
nvim /etc/systemd/logind.conf
#IdleAction=suspend
#IdleActionSec=10min

# change the following if you do not want to sleep when the laptop is closed
#HandleLidSwitch=ignore



