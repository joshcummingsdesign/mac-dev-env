# ------------ Theme ------------
force_color_prompt=yes

# ------------ Settings ------------
# Set cursor to block
echo -ne "\e[2 q"

# ------------ Key Bindings ------------
# Vi mode
bind '"fd":"\e"'

# Vim buffer
export VISUAL=vim

# ------------ Aliases ------------
# File system
alias l="ls -lah"
alias grep="grep --color"

# wp-cli
alias wpmysql='echo -ne "\e[2 q" && wp db cli'
