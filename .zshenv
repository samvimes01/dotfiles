# Speed up init
skip_global_compinit=1

# Brew conflicts
ZSH_DISABLE_COMPFIX=true

# oh-my-zsh
ZSH_THEME="agnoster"
SOLARIZED_THEME="light"
export ZSH=$HOME/.oh-my-zsh
plugins=(git yarn npm docker)
source $ZSH/oh-my-zsh.sh

# nvim
# alias nvim-lazy="NVIM_APPNAME=nvim-lazyvim nvim"
# alias nvim-kick="NVIM_APPNAME=nvim-kickstart nvim"
alias nvim-chad="NVIM_APPNAME=nvim-nvchad nvim"
# alias nvim-astro="NVIM_APPNAME=nvim-astrovim nvim"


nv() {
  # select config in lazyvim kickstart nvchad astrovim lunarvim
  select config in nvchad lazyvim
  do NVIM_APPNAME=nvim-$config nvim $@; break; done
}
nvims() {
  # items=("default" "kickstart" "lazyvim" "nvchad" "astrovim" "lunarvim")
  items=("nvchad" "lazyvim" "default" ) 
  config=$(printf "%s\n" "${items[@]}" | fzf --prompt=" Neovim Config  " --height=~50% --layout=reverse --border --exit-0)
  if [[ -z $config ]]; then
    echo "Nothing selected"
    return 0
  elif [[ $config == "default" ]]; then
    config=""
  fi
  NVIM_APPNAME=nvim-$config nvim $@
}

bindkey -s ^a "nvims\n"
# export NVIM_APPNAME=nvim-nvchad
EDITOR="nvim"

# Aliases
. ~/dotfiles/.aliases
. ~/dotfiles/.aliases_local

# Exports

## nvm
# export NVM_DIR="$HOME/.nvm"
# [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
# [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

## volta
export VOLTA_HOME="$HOME/.volta"
export PATH="$VOLTA_HOME/bin:$PATH"

## yarn
export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"

## Android
export ANDROID_HOME="$HOME/Library/Android/sdk"
export PATH=$PATH:$JAVA_HOME:$ANDROID_HOME/emulator:$ANDROID_HOME/tools:$ANDROID_HOME/tools/bin:$ANDROID_HOME/emulator:$ANDROID_HOME/platform-tools:$ANDROID_HOME/cmdline-tools/version/bin:$GRADLE_HOME/bin

# Flutter
export PATH="$PATH:$HOME/development/flutter/bin"
export PATH="$PATH:$HOME/.pub-cache/bin"

## Go
export GOPATH=~/go
export PATH=$PATH:/usr/local/go/bin:$GOPATH/bin

export NODE_OPTIONS="--max-old-space-size=8192"

## Ruby
eval "$(rbenv init - zsh)"
## Python
export PYENV_ROOT="$HOME/.pyenv"
# command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

## vscodium
export PATH="$PATH:/Applications/VSCodium.app/Contents/Resources/app/bin"

## gcloud cli
export CLOUDSDK_PYTHON="$(brew --prefix)/Cellar/python@3.11/3.11.7_1/bin/python3"
source "$(brew --prefix)/share/google-cloud-sdk/path.zsh.inc"
source "$(brew --prefix)/share/google-cloud-sdk/completion.zsh.inc"

# fast cd and search
eval "$(fzf --zsh)"
eval "$(zoxide init zsh)"

# yazi cd on quit
function yy() {
	local tmp="$(mktemp -t "yazi-cwd.XXXXXX")"
	yazi "$@" --cwd-file="$tmp"
	if cwd="$(cat -- "$tmp")" && [ -n "$cwd" ] && [ "$cwd" != "$PWD" ]; then
		cd -- "$cwd"
	fi
	rm -f -- "$tmp"
}
