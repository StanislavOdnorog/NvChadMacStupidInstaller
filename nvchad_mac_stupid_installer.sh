#!/bin/bash
# This is a script to install NVchad on a fresh MACos system

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
echo "Homebrew is installed."

brew install gcc
echo "GCC is installed."

rm -rf ~/.config/nvim
rm -rf ~/.local/share/nvim/
echo ".config/nvim and .local/share/nvim directories are cleared."

brew install ripgrep
echo "ripgrep is installed."

curl -LO https://github.com/neovim/neovim/releases/download/nightly/nvim-macos.tar.gz
tar xzf nvim-macos.tar.gz -C ~/
rm nvim-macos.tar.gz
echo "alias nvim='~/nvim-macos/bin/nvim'" >> ~/.bash_profile
echo "alias vim='nvim'" >> ~/.bash_profile
source ~/.bash_profile
echo "Nvim 9.0 is installed."

brew install make 
echo "make is installed."

brew install npm
echo "npm is installed."

brew install node
echo "node is installed."

brew install rust 
echo "rust and cargo are installed."

brew tap homebrew/cask-fonts
brew install --cask font-jetbrains-mono-nerd-font
echo "JetbrainsMono Nerd Font is installed."

brew install --cask iterm2
mdfind "kMDItemCFBundleIdentifier == com.googlecode.iterm2"
echo "Iterm is installed."

git clone https://github.com/NvChad/NvChad ~/.config/nvim --depth 1
echo "NVchad is installed."

nvim
echo "Installation is over."


