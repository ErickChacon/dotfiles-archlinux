# !/bin/sh
# This script creates symbolinks for the dotfiles.

# Define software paths

path_dotfiles=$(pwd)
echo "Git folder: $path_dotfiles"

path_x11=~/.config/x11
path_zprofile=~/.zprofile
path_shell=~/.config/shell
path_bash_profile=~/.bash_profile
path_bashrc=~/.bashrc
path_zsh=~/.config/zsh

path_local_bin=~/.local/bin
path_lf=~/.config/lf
path_nvim=~/.config/nvim
path_tmux=~/.config/tmux
path_zathura=~/.config/zathura

# Custom functions

function linkfile {
    path_gitfile=$1
    path_dotfile=$2
    overwrite=${3:-false}
    if [ $overwrite = true ]; then
        rm -f $path_dotfile
    fi
    if [ ! -f $path_dotfile ]; then
        ln -s $path_gitfile $path_dotfile
    fi
}

function linkdir {
    path_gitdir=$1
    path_dotdir=$2
    overwrite=${3:-false}
    if [ $overwrite = true ]; then
        echo "Removing files"
        rm -rf $path_dotdir
    fi
    if [ ! -d $path_dotdir ]; then
        echo "Creating Symblink"
        mkdir -p $(dirname $path_dotdir)
        ln -s $path_gitdir $path_dotdir
    fi
}

# Make symbolink links

overwrite=${1:-false}

linkfile $path_dotfiles/.zprofile $path_zprofile $overwrite
linkfile $path_dotfiles/.bash_profile $path_bash_profile $overwrite
linkfile $path_dotfiles/.bashrc $path_bashrc $overwrite
linkdir $path_dotfiles/.config/lf $path_lf $overwrite
linkdir $path_dotfiles/.config/nvim $path_nvim $overwrite
linkdir $path_dotfiles/.config/shell $path_shell $overwrite
linkdir $path_dotfiles/.config/tmux $path_tmux $overwrite
linkdir $path_dotfiles/.config/x11 $path_x11 $overwrite
linkdir $path_dotfiles/.config/zsh $path_zsh $overwrite
linkdir $path_dotfiles/.local/bin $path_local_bin $overwrite
