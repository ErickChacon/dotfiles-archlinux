# python provider
sudo pacman -S python-pynvim xclip

# telescope pre-requisites
sudo pacman -S ripgrep fd

# packer plugin manager
git clone --depth 1 https://github.com/wbthomason/packer.nvim \
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim

# Run on nvim
# :PackerInstall
# :PackerCompile
