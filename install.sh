#!/usr/bin/env bash
set -euo pipefail

DOTFILES_DIR="$(cd "$(dirname "$0")" && pwd)"

# Files to symlink to $HOME
home_links=(
	.zshenv
	.zshrc
	.zprofile
	.bash_profile
	.bashrc
	.gitignore_global
)


link_file() {
	local src="$1" dst="$2"
	if [ -L "$dst" ]; then
		rm "$dst"
	elif [ -f "$dst" ]; then
		echo "  Backing up $dst -> ${dst}.backup"
		mv "$dst" "${dst}.backup"
	fi
	ln -s "$src" "$dst"
	echo "  Linked $dst -> $src"
}

echo "Installing dotfiles from $DOTFILES_DIR"

# Symlink home files
for file in "${home_links[@]}"; do
	link_file "$DOTFILES_DIR/$file" "$HOME/$file"
done

# Symlink files with different target names
link_file "$DOTFILES_DIR/.gitconfig_global" "$HOME/.gitconfig"
link_file "$DOTFILES_DIR/.gitconfig_bids" "$HOME/.gitconfig_bids"
link_file "$DOTFILES_DIR/.gitconfig_flex" "$HOME/.gitconfig_flex"
mkdir -p "$HOME/.ssh"
link_file "$DOTFILES_DIR/.ssh.config" "$HOME/.ssh/config"

# Symlink .gnupg contents
mkdir -p "$HOME/.gnupg"
for file in "$DOTFILES_DIR"/.gnupg/*; do
	base="$(basename "$file")"
	link_file "$file" "$HOME/.gnupg/$base"
done

# Symlink .config (submodule)
#link_file "$DOTFILES_DIR/.config" "$HOME/.config"

echo "Done. Restart your shell or run: source ~/.zshrc"
