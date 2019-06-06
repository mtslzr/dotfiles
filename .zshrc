export ZSH="$HOME/.oh-my-zsh"

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

# Go
export GOPATH="$HOME/Development/go"
export PATH="$PATH:$GOPATH/bin"

# nvm
export NVM_DIR="$HOME/.nvm"
  . "/usr/local/opt/nvm/nvm.sh"

# thefuck
eval $(thefuck --alias)

#
# Aliases
#

alias venv="source .venv/bin/activate; which python"

# tabtab source for serverless package
# uninstall by removing these lines or running `tabtab uninstall serverless`
[[ -f /Users/matthew/.config/yarn/global/node_modules/tabtab/.completions/serverless.zsh ]] && . /Users/matthew/.config/yarn/global/node_modules/tabtab/.completions/serverless.zsh
# tabtab source for sls package
# uninstall by removing these lines or running `tabtab uninstall sls`
[[ -f /Users/matthew/.config/yarn/global/node_modules/tabtab/.completions/sls.zsh ]] && . /Users/matthew/.config/yarn/global/node_modules/tabtab/.completions/sls.zsh
# tabtab source for slss package
# uninstall by removing these lines or running `tabtab uninstall slss`
[[ -f /Users/matthew/.config/yarn/global/node_modules/tabtab/.completions/slss.zsh ]] && . /Users/matthew/.config/yarn/global/node_modules/tabtab/.completions/slss.zsh
# added by travis gem
[ -f /Users/matthew/.travis/travis.sh ] && source /Users/matthew/.travis/travis.sh
