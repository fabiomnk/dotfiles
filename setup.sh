# MacOS System
# Remove Message of the day prompt
touch $HOME/.hushlogin
# Show hidden files in finder
defaults write com.apple.finder AppleShowAllFiles YES

# install brew 
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

echo "pulling"
git pull

echo "install brewfile"
brew bundle

echo "stowing dotfiles"

echo "nvim"
mkdir $HOME/.config/nvim
stow nvim -t $HOME/.config/nvim

echo "zsh"
stow oh-my-zsh -t $HOME/

echo "iterm2"
stow iterm2 -t ~/Library/Application\ Support/iTerm2/DynamicProfiles

echo "tmux"
stow tmux -t $HOME/

echo "tpm"
mdkir -p $HOME/.tmux/plugins
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

echo "yabai"
mkdir $HOME/.config/yabai
stow yabai -t $HOME/.config/yabai


echo "skhd"
mkdir $HOME/.config/skhd
stow skhd -t $HOME/.config/skhd


echo "alacritty"
mkdir $HOME/.config/alacritty
stow alacritty -t $HOME/.config/alacritty
