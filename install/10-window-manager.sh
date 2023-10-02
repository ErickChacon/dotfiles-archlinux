# window manager

# install and setup git
pacman -S git openssh
git clone https://github.com/ErickChacon/dotfiles-archlinux.git
cd dotfiles-archlinux
./install/git-config.sh
cat ~/.ssh/id_rsa.pub > git-ssh
# copy that file to an usb and paste in github and gitlab (or use openssh alternatively)
# server (start sshd): sudo systemctl start sshd
# server (check sshd): sudo systemctl status sshd
# local (send file): scp ~/git-ssh serveruser@serverdomain:/path/to/copy
cd ..
rm -rf dotfiles-archlinux
git clone git@github.com:ErickChacon/dotfiles-archlinux.git

# keyboard
./dotfiles-archlinux/install/keyboard-uk.sh

# install yay
./dotfiles-archlinux/install/yay.sh

# fonts
./dotfiles-archlinux/install/fonts.sh

# xorg
./dotfiles-archlinux/install/xorg.sh

# st and dmenu
./dotfiles-archlinux/install/st-dmenu.sh

# dwm
./dotfiles-archlinux/install/dwm.sh

# zsh
./dotfiles-archlinux/install/zsh.sh

# wallpaper
mkdir -p ~/pictures/wallpapers
git clone https://gitlab.com/dwt1/wallpapers dt
./dotfiles-archlinux/install/wallpaper.sh

# audio
./dotfiles-archlinux/install/audio-and-video.sh

# cronie
./dotfiles-archlinux/install/cron.sh

# dotfiles
# run symblinks.sh

