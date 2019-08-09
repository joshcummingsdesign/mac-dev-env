# Path to your oh-my-zsh installation
export ZSH=~/.oh-my-zsh


# === Theme ===
ZSH_THEME="powerlevel9k/powerlevel9k"
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(vi_mode context dir vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(virtualenv status root_indicator background_jobs)


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
# Vi mode
export KEYTIMEOUT=10
bindkey -v
bindkey -M viins 'fd' vi-cmd-mode

# Use 24-bit (true-color) mode
export TERM="xterm-256color"


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
