# 9. install other software

# power-related commands
sudo pacman -S polkit

# web explorer
yay -S brave-bin

# image editors, image viewer
sudo pacman -S inkscape gimp sxiv

# pdf viewer and utilities
sudo pacman -S zathura zathura-pdf-mupdf poppler

# libreoffice: remember to upgrade your system before inslatting libreoffice
sudo pacman -S libreoffice-fresh

# file explorer
sudo pacman -S lf

# teaching utilities: notebook and annotator
sudo pacman -S xournalpp
yay -S gromit-mpx

# fuzy finder
sudo pacman -S ripgrep fd

# vim-like spreadsheet
yay -S sc-im
# libxlswriter: export to xlsx. Requires rebuild of sc-im

# # # teams
# # yay -S teams
# # # remember to disable "On close, keep the applications running" to be able to close teams
#
# # graphic card
# lspci -k | grep -A 2 -e VGA -e 3D
# sudo pacman -S nvidia nvidia-utils
#
#
# # # bluetooth
# # pacman -S bluez bluez-utils
# # systemctl start bluetooth.service
#

#### Need to organize from here

# linux utitlies

# usb ntfs support
sudo pacman -S extra/ntfs-3g

# copying tool
sudo pacman rsync


