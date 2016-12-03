# Set fpath and PATH
fpath=( "$HOME/.zpure" $fpath )
PATH=$PATH:~/.composer/vendor/bin

# Aliases
alias ls="ls -Gh"
alias ll="ls -la"

# Load Pure Prompt
autoload -U promptinit; promptinit
prompt pure

# Syntax Highlighting
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
