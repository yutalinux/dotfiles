#!/bin/bash
install() {
  sudo pacman -S --needed $@
}

<<<<<<< Updated upstream
# sudo pacman -S --needed 
=======
install base
install base-devel
install nodejs npm yarn pnpm
install python
install rustup
install zsh zsh-completions zsh-syntax-highlighting zsh-autosuggestions
install tmux
install vim neovim
install curl wget
install git github-cli
install fastfetch

rustup toolchain install stable
sudo chsh yuta -s /bin/zsh
>>>>>>> Stashed changes
