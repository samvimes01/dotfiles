# Speed up init
skip_global_compinit=1

# Brew conflicts
ZSH_DISABLE_COMPFIX=true

# oh-my-zsh
ZSH_THEME="agnoster"
export ZSH=$HOME/.oh-my-zsh
plugins=(git yarn npm docker)
source $ZSH/oh-my-zsh.sh

# Aliases
. ~/dotfiles/.aliases
. ~/dotfiles/.aliases_local

# - Exports
# nvm
# export NVM_DIR="$HOME/.nvm"
# [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
# [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

#volta
export VOLTA_HOME="$HOME/.volta"
export PATH="$VOLTA_HOME/bin:$PATH"

# yarn
export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
# Flutter
export PATH="$PATH:$HOME/development/flutter/bin"

#Mac
export JAVA_HOME=`/usr/libexec/java_home -v 1.8`
export ANDROID_HOME="$HOME/Library/Android/sdk"
export PATH=$PATH:$ANDROID_HOME/emulator:$ANDROID_HOME/tools:$ANDROID_HOME/tools/bin:$ANDROID_HOME/emulator:$ANDROID_HOME/platform-tools
export GRADLE_HOME=/usr/local/Cellar/gradle/6.7.1
export PATH=$PATH:$GRADLE_HOME/bin
#Linux
# JDK
# if [[ -e /usr/lib/jvm/java-8-openjdk-amd64 ]]; then
#   export JAVA_HOME="/usr/lib/jvm/java-8-openjdk-amd64"
#   export JRE_HOME="/usr/lib/jvm/java-8-openjdk-amd64/jre"
#   export PATH="$PATH:$JAVA_HOME/bin"
# fi
# Android
# export ANDROID_HOME=$HOME/Android/Sdk
# export ANDROID_SDK_ROOT=$HOME/Android/Sdk
# export ANDROID_AVD_HOME=~/.android/avd
# export PATH=$PATH:$ANDROID_HOME/platform-tools

#export GRADLE_HOME=/opt/gradle/gradle-4.10.3
#export PATH=$PATH:$GRADLE_HOME/bin

export LD_LIBRARY_PATH=.
export DYLD_LIBRARY_PATH=.

export PATH=$PATH:/usr/local/go/bin
# WSL2 Android tools
#if [[ -e $HOME/android-sdk-tools ]]; then
#    export PATH="$HOME/android-sdk-tools:$HOME/android-sdk-tools/bin:$PATH"
#    export PATH="$HOME/.android/platform-tools:$PATH"
#    export ANDROID_HOME="$HOME/.android"
#    export ANDROID_SDK_ROOT="$HOME/.android"
#    export REPO_OS_OVERRIDE="linux"
##    adb kill-server 2> /dev/null
##    export ADB_SERVER_SOCKET=tcp:$(cat /etc/resolv.conf | grep nameserver | cut -d' ' -f2):5037
#fi
