## Personal settings ## copy to ~/
DEFAULT_USER=$USER
ZDOTDIR=$HOME/dotfiles
. $ZDOTDIR/.zshenv

export GPG_TTY=$(tty)

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"

# Generated for envman. Do not edit.
[ -s "$HOME/.config/envman/load.sh" ] && source "$HOME/.config/envman/load.sh"
