export ZSH="/Users/matthew/.oh-my-zsh"

#
# Antigen
#

source /usr/local/share/antigen/antigen.zsh
antigen use oh-my-zsh

# Plugins
antigen bundle common-aliases
antigen bundle docker
antigen bundle git
antigen bundle osx
antigen bundle pip
antigen bundle python
antigen bundle vscode
antigen bundle web-search
antigen bundle yarn

# Syntax Highlighting
antigen bundle zsh-users/zsh-syntax-highlighting

# Theme
antigen theme carloscuesta/materialshell materialshell

# Apply
antigen apply

#
# Setup
#

# nvm
export NVM_DIR="$HOME/.nvm"
  . "/usr/local/opt/nvm/nvm.sh"

# thefuck
eval $(thefuck --alias)

#
# Aliases
#