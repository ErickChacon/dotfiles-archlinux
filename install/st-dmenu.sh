# st
rm -rf st
git clone https://github.com/LukeSmithxyz/st
cd st
sudo make install
cd ..

# dmenu
sudo pacman -S dmenu

# dwm-blocks
rm -rf dwmblocks
git clone https://github.com/ErickChacon/dwmblocks.git
cd dwmblocks
git checkout patched
sudo make clean install
cd ..
