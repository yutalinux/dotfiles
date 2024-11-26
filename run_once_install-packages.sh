#!/bin/bash
install() {
	sudo pacman -S --needed --noconfirm $@
}

install base \
	base-devel \
	nodejs npm yarn pnpm \
	python \
	rustup \
	zsh zsh-completions zsh-syntax-highlighting zsh-autosuggestions \
	tmux \
	vim neovim \
	curl wget \
	git github-cli \
	fastfetch

rustup toolchain install stable
sudo chsh yuta -s /bin/zsh
