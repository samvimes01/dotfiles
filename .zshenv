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
export PATH=$PATH:/usr/local/go/bin

export NODE_OPTIONS="--max-old-space-size=8192"

## Ruby
eval "$(rbenv init - zsh)"

## vscodium
export PATH="$PATH:/Applications/VSCodium.app/Contents/Resources/app/bin"
