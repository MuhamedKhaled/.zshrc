#!/bin/bash

/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# install iterm2
brew cask install iterm2

# install oh my zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# if You're running bash, and it has no idea about any of the oh-my-zsh scripts/functions. You should be able to uninstall oh-my-zsh manually with 
sh ~/.oh-my-zsh/tools/uninstall.sh.

# Change font and add it to directory
mkdir -p ~/Library/Fonts
curl -sLo "$HOME/Library/Fonts/Meslo for Powerline.ttf" https://github.com/Falkor/dotfiles/raw/master/fonts/SourceCodePro%2BPowerline%2BAwesome%2BRegular.ttf

# install fzf & texthighlighting
brew update
brew install fzf zsh-syntax-highlighting
/usr/local/opt/fzf/install --all

git clone https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/themes/powerlevel10k
curl -sLo "$HOME/Desktop/shades-of-blue.itermcolors" https://gist.githubusercontent.com/jonnylangefeld/3c6ecdcc13f15abbbc5297f689421440/raw/540097894c7ddf483a4d9e09222a3481e207aab4/shades-of-blue.itermcolors
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

curl -sLo "$HOME/.zshrc" https://gist.github.com/jonnylangefeld/3c6ecdcc13f15abbbc5297f689421440/raw/23dc4143e85aa35399d7ae6d248d69c25f76e5dd/.zshrc

compaudit | xargs chmod g-w,o-w
