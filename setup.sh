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
