# ------------ Init ------------
# stop these errors https://github.com/asdf-vm/asdf/issues/266
# & make it fast https://carlosbecker.com/posts/speeding-up-zsh/
autoload -Uz compinit
if [ $(date +'%j') != $(stat -f '%Sm' -t '%j' ~/.zcompdump) ]; then
	compinit;
else
	compinit -C;
fi;


# ------------ Plugins ------------
export ZPLUG_HOME=/usr/local/opt/zplug
source $ZPLUG_HOME/init.zsh

zplug "bhilburn/powerlevel9k", use:powerlevel9k.zsh-theme
zplug "lib/completion", from:oh-my-zsh
zplug "lib/history", from:oh-my-zsh
zplug "lib/theme-and-appearance", from:oh-my-zsh
zplug "plugins/git", from:oh-my-zsh
zplug "zsh-users/zsh-autosuggestions"
zplug "zsh-users/zsh-completions"
zplug "zsh-users/zsh-history-substring-search"
zplug "zsh-users/zsh-syntax-highlighting", defer:2 # Run after compinit

# Install plugins if there are plugins that have not been installed
if ! zplug check --verbose; then
    printf "Install? [y/N]: "
    if read -q; then
        echo; zplug install
    fi
fi

zplug load


# ------------ Theme ------------
# Use 24-bit (true-color) mode
export TERM="xterm-256color"

# Powerlevel9k
ZSH_THEME="powerlevel9k/powerlevel9k"
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(virtualenv context dir vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status root_indicator background_jobs)


# ------------ Settings ------------
# User config
DEFAULT_USER=`whoami`

# Set cursor to line when in vi insert mode
cursor-block () {
  echo -ne "\e[2 q"
}
cursor-line () {
  echo -ne '\e[5 q'
}
zle-keymap-select () {
  if [ $KEYMAP = vicmd ]; then
    cursor-block
  else
    cursor-line
  fi
}
set-cursor () {
  cursor-line
}
precmd_functions+=(set-cursor)


# ------------ Key Bindings ------------
# Vi mode
export KEYTIMEOUT=10
bindkey -v
bindkey -M viins 'fd' vi-cmd-mode
bindkey -M vicmd 'k' history-substring-search-up
bindkey -M vicmd 'j' history-substring-search-down
bindkey -M vicmd '?' history-incremental-search-backward
bindkey '^r' autosuggest-accept

# Vim buffer
autoload -U edit-command-line
zle -N edit-command-line
bindkey -M vicmd "v" edit-command-line


# ------------ Aliases ------------
# File system
alias l="ls -lah"
alias grep='grep --color'

# Remove all .DS_Store files
alias dstroy="find . -name '.DS_Store' -type f -delete"

# tmux
alias ta="tmux attach-session -t"
alias tl="tmux list-sessions"


# ------------ 3rd Party ------------
# gnu-sed
PATH="/usr/local/opt/gnu-sed/libexec/gnubin:$PATH"

# asdf
. /usr/local/opt/asdf/asdf.sh
. /usr/local/opt/asdf/etc/bash_completion.d/asdf.bash

# homebrew
export PATH="/usr/local/sbin:$PATH"
