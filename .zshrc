# Interactive zsh configuration
DEFAULT_USER=$USER
ZDOTDIR=$HOME/dotfiles

# History
HISTFILE=~/.zsh_history
HISTSIZE=20000
SAVEHIST=20000
setopt HIST_SAVE_NO_DUPS
setopt INC_APPEND_HISTORY

# Keybindings
bindkey -e
bindkey "\e[A" history-beginning-search-backward
bindkey "\e[B" history-beginning-search-forward

#git clone https://github.com/jirutka/zsh-shift-select ~/.local/share/zsh/plugins/zsh-shift-select
source ~/.local/share/zsh/plugins/zsh-shift-select/zsh-shift-select.plugin.zsh

# Options
setopt autocd

# Completion
autoload -U compinit; compinit

# GPG
export GPG_TTY=$(tty)

# Aliases
. ~/dotfiles/.aliases
[ -f ~/dotfiles/.aliases_local ] && . ~/dotfiles/.aliases_local

# Tool integrations (interactive only)
eval "$(fzf --zsh)"
eval "$(zoxide init zsh)"
eval "$(mise activate zsh)"
eval "$(starship init zsh)"
