## Personal settings ## copy to ~/
DEFAULT_USER=$USER
ZDOTDIR=$HOME/dotfiles
. $ZDOTDIR/.zshenv

export GPG_TTY=$(tty)
export VOLTA_HOME="$HOME/.volta"
export PATH="$VOLTA_HOME/bin:$PATH"

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"
