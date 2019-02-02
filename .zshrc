source /usr/share/zsh-antigen/antigen.sh

antigen use oh-my-zsh

antigen theme https://github.com/denysdovhan/spaceship-zsh-theme
spaceship

antigen bundle git
antigen bundle npm
antigen bundle zsh-users/zsh-syntax-highlighting

# NVM
export NVM_LAZY_LOAD=true
antigen bundle lukechilds/zsh-nvm
antigen bundle Sparragus/zsh-auto-nvm-use

antigen apply

# Setup zsh-autosuggestions
source "$HOME/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh"

export EDITOR=nvim
alias vim="nvim"

# Load NVM
export NVM_DIR="$(realpath $HOME/.nvm)"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
