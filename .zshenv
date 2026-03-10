# Speed up init
skip_global_compinit=1

# Brew conflicts
ZSH_DISABLE_COMPFIX=true

. ~/dotfiles/.star_opts

export XDG_CONFIG_HOME="$HOME/.config"

EDITOR="nvim"

# Aliases
. ~/dotfiles/.aliases
. ~/dotfiles/.aliases_local

# Exports

export NODE_OPTIONS="--max-old-space-size=8192"

# own scripts
export PATH="$PATH:$HOME/workspace/scripts"
export PATH="$HOME/.local/bin:$PATH"

## Android
export ANDROID_HOME="$HOME/Library/Android/sdk"
export PATH=$PATH:$JAVA_HOME:$ANDROID_HOME/emulator:$ANDROID_HOME/tools:$ANDROID_HOME/tools/bin:$ANDROID_HOME/emulator:$ANDROID_HOME/platform-tools:$ANDROID_HOME/cmdline-tools/version/bin:$GRADLE_HOME/bin

# Flutter
export PATH="$PATH:$HOME/development/flutter/bin"
export PATH="$PATH:$HOME/.pub-cache/bin"

## Go
export GOPATH=~/go
export PATH=$PATH:/usr/local/go/bin:$GOPATH/bin

# elixir
elixir_installs_dir=$HOME/.elixir-install/installs
export PATH=$elixir_installs_dir/otp/28.1/bin:$PATH
export PATH=$elixir_installs_dir/elixir/1.19.4-otp-28/bin:$PATH


## gcloud cli
#export CLOUDSDK_PYTHON="$(brew --prefix)/Cellar/python@3.11/3.11.7_1/bin/python3"
#source "$(brew --prefix)/share/google-cloud-sdk/path.zsh.inc"
#source "$(brew --prefix)/share/google-cloud-sdk/completion.zsh.inc"
export CLOUDSDK_PYTHON="$(type python3)"
alias gcloud='docker run --rm -it -v ~/.config/gcloud-docker:/root/.config/gcloud google/cloud-sdk:latest gcloud'

# fast cd and search
eval "$(fzf --zsh)"
eval "$(zoxide init zsh)"

eval "$(mise activate zsh)"

export PATH="/usr/local/opt/mysql-client/bin:$PATH"

# Added by Windsurf
export PATH="/Users/alex/.codeium/windsurf/bin:$PATH"

