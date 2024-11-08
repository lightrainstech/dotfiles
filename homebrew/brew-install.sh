#!/bin/sh
# Install bew deps

# Install the correct homebrew for each OS type
if test "$(uname)" = "Darwin"
then
  # Install homebrew packages
  brew install zsh zsh-completions grc coreutils tmux youtube-dl vim node wget git tree tor git-flow-avh wrk zplug yarn imagemagick ffmpeg prettier pwgen rustup the_silver_searcher nvm

  # Install cask items
  brew install --cask transmission vlc iterm2 firefox visual-studio-code  discord skype insomnia telegram dropbox keepingyouawake zed
elif test "$(expr substr $(uname -s) 1 5)" = "Linux"
then
  # Install homebrew packages
  brew install grc tmux youtube-dl vim node tree tor pre-commit imagemagick zplug
fi

# Disable analytics https://docs.brew.sh/Analytics
brew analytics off
exit 0
