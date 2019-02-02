source /usr/local/share/antigen/antigen.zsh

antigen use oh-my-zsh

antigen theme denysdovhan/spaceship-prompt

antigen bundle git
antigen bundle npm
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-autosuggestions

antigen apply

export EDITOR=nvim
alias vim="nvim"

# Load NVM
export NVM_DIR="$HOME/.nvm"
source $(brew --prefix nvm)/nvm.sh
