# Path to your oh-my-zsh installation
export ZSH=~/.oh-my-zsh


# === Theme ===
ZSH_THEME="powerlevel9k/powerlevel9k"
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(virtualenv context dir vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status root_indicator background_jobs)


# === Plugins ===
plugins=(
  git
  zsh-autosuggestions
  zsh-syntax-highlighting
)


# Source oh-my-zsh
source $ZSH/oh-my-zsh.sh


# === User Config ===
DEFAULT_USER=`whoami`


# === Settings ===
# Use 24-bit (true-color) mode
export TERM="xterm-256color"

# Vi mode
export KEYTIMEOUT=10
bindkey -v
bindkey -M viins 'fd' vi-cmd-mode

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


# === Key Bindings ===
# Edit command in an external editor.
autoload -U edit-command-line
zle -N edit-command-line
bindkey -M vicmd "v" edit-command-line


# === Aliases ===
# Remove all .DS_Store files
alias dstroy="find . -name '.DS_Store' -type f -delete"

# tmux
alias ta="tmux attach-session -t"
alias tl="tmux list-sessions"
