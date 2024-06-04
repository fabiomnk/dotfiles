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
mkdir $HOME/.config
mkdir $HOME/.config/nvim
stow nvim -t $HOME/.config/nvim

echo "zsh"
stow oh-my-zsh -t $HOME/

#echo "iterm2"
#stow iterm2 -t ~/Library/Application\ Support/iTerm2/DynamicProfiles

echo "tmux"
stow tmux -t $HOME/

echo "tpm"
mkdir -p $HOME/.tmux/plugins
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


echo "lazygit"
rm  "$HOME/Library/Application Support/lazygit/config.yml"
stow lazygit -t "$HOME/Library/Application Support/lazygit"



echo "Krew"
(
  set -x; cd "$(mktemp -d)" &&
  OS="$(uname | tr '[:upper:]' '[:lower:]')" &&
  ARCH="$(uname -m | sed -e 's/x86_64/amd64/' -e 's/\(arm\)\(64\)\?.*/\1\2/' -e 's/aarch64$/arm64/')" &&
  KREW="krew-${OS}_${ARCH}" &&
  curl -fsSLO "https://github.com/kubernetes-sigs/krew/releases/latest/download/${KREW}.tar.gz" &&
  tar zxvf "${KREW}.tar.gz" &&
  ./"${KREW}" install krew
)



