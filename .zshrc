eval "$(zoxide init zsh)"

export PATH=$PATH:~/.local/bin
export GIT_TERMINAL_PROMPT=1

export DOTFILES=$HOME/dotfiles
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="robbyrussell"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export PATH="$DOTFILES/bin:$PATH"

plugins=(
    git
    zsh-autosuggestions
    history
    nvm
    themes
)

alias pip=pip3
alias python=python3
alias vim=nvim
alias zs="source $HOME/.zshrc"
alias shrug="echo '¯\_(ツ)_/¯' | pbcopy"
alias c="clear"
alias copyssh="pbcopy < $HOME/.ssh/id_ed25519.pub"

alias repos="cd $HOME/repos"

alias jfresh="rm -rf node_modules/ package-lock.json && npm install"

source $ZSH/oh-my-zsh.sh
