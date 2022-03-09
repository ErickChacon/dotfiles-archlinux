# Lines configured by zsh-newuser-install
HISTFILE=~/.cache/zsh/history
HISTSIZE=1000
SAVEHIST=1000
setopt autocd
unsetopt beep
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/chaconmo/.config/zsh/.zshrc'

autoload -Uz compinit
compinit -d ~/.cache/zsh/zcompdump
# End of lines added by compinstall

# zstyle ':vcs_info:*' enable git svn
# zstyle ':vcs_info:git*' formats '[%b]'
# zstyle ':completion:*' menu select

# zmodload zsh/complete
# zmodload zsh/complist
# zmodload zsh/computil
# zmodload zsh/main
# zmodload zsh/parameter
# zmodload zsh/regex
# zmodload zsh/stat
# zmodload zsh/zle
# zmodload zsh/zleparameter
# zmodload zsh/zutil
