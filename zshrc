export EDITOR="vim"

SPACESHIP_BATTERY_SHOW="false"

case $(uname) in
  Darwin*)
    export NVM_DIR="$(brew --prefix nvm)"
    ;;
  *)
    export NVM_DIR="$HOME/.nvm"
    ;;
esac

source "$HOME/.zgen/zgen.zsh"

if ! zgen saved; then
  zgen oh-my-zsh
  zgen oh-my-zsh plugins/git
  zgen oh-my-zsh plugins/gcloud
  zgen oh-my-zsh plugins/kubectl

  zgen load zsh-users/zsh-autosuggestions
  zgen load zsh-users/zsh-completions
  zgen load zsh-users/zsh-syntax-highlighting

  zgen load denysdovhan/spaceship-prompt spaceship

  zgen save
fi

source $NVM_DIR/nvm.sh  # This loads nvm

load-nvmrc() {
  if [[ -f .nvmrc && -r .nvmrc ]]; then
    nvm use
  fi
}

add-zsh-hook chpwd load-nvmrc

load-nvmrc

alias vim="nvim"
