# Basic settings
autoload -U colors && colors # enable colors
stty stop undef              # disable ctrl-s to freeze terminal
setopt autocd                # cd a directory when typing only the path
unsetopt beep                # do not beep
bindkey -v                   # vi-like bindings

# Load aliases
[ -f "${XDG_CONFIG_HOME:-$HOME/.config}/shell/aliasrc" ] && source "${XDG_CONFIG_HOME:-$HOME/.config}/shell/aliasrc"
[ -f "${XDG_CONFIG_HOME:-$HOME/.config}/shell/pluginsrc" ] && source "${XDG_CONFIG_HOME:-$HOME/.config}/shell/pluginsrc"

# History settings
HISTFILE=~/.cache/zsh/history
HISTSIZE=1000
SAVEHIST=1000

# The following lines were added by compinstall
zstyle :compinstall filename '/home/chaconmo/.config/zsh/.zshrc'
autoload -Uz compinit
zstyle ':completion:*' menu select
compinit -d ~/.cache/zsh/zcompdump

# Git prompt
source /home/chaconmo/.config/shell/git-prompt.sh
setopt PROMPT_SUBST
GIT_PS1_SHOWDIRTYSTATE=1
GIT_PS1_SHOWUNTRACKEDFILES=1
GIT_PS1_SHOWUPSTREAM="verbose"
PS1=$'┌─[%{$fg_bold[green]%}%n%{$reset_color%}][%{$fg[green]%}%m%{$reset_color%}]$(__git_ps1 "[±][%s]")[%{$fg[cyan]%}%~%{$reset_color%}]\n└─▪ '

# Syntax highlighting
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
