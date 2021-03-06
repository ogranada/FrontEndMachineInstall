#!/bin/bash

# Xcode Tool set
xcode-select --install

# Homebew and Cask
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew tap caskroom/cask
brew install wget
brew install homebrew/dupes/unzip
brew install unrar
brew install gnupg gnupg2
brew install zsh

# User Applications
brew cask install iterm2
brew cask install slack
brew cask install google-chrome
brew cask install firefox
brew cask install opera
brew cask install skype

# Ruby Version Manager
curl -sSL https://rvm.io/mpapis.asc | gpg2 --import -
curl -sSL https://get.rvm.io | bash

# Node Version Manager
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.31.7/install.sh | bash
echo \[ \-s \"$HOME/.nvm/nvm.sh\" \] \&\& source \"\$HOME/.nvm/nvm\.sh\" >> .bash_profile
echo \[ \-s \"$HOME/.nvm/nvm.sh\" \] \&\& source \"\$HOME/.nvm/nvm\.sh\" >> .zshrc

# Python Package Manager
osascript -e "do shell script \"easy_install pip;pip install virtualenv;pip install pbr;pip install --no-deps stevedore;pip install --no-deps virtualenvwrapper\" with administrator privileges"
# Prepare virtual env
printf '\n%s\n%s\n%s\n\n' '# virtualenv' 'export WORKON_HOME=~/.virtualenvs' 'source /usr/local/bin/virtualenvwrapper.sh' >> ~/.bash_profile
printf '\n%s\n%s\n%s\n\n' '# virtualenv' 'export WORKON_HOME=~/.virtualenvs' 'source /usr/local/bin/virtualenvwrapper.sh' >> ~/.zshrc

# Java install
curl -sL http://git.io/viaTR | bash
echo "export JAVA_HOME=\`/usr/libexec/java_home\`" >> ~/.bash_profile
echo "export JAVA_HOME=\`/usr/libexec/java_home\`" >> ~/.zshrc

# Text Editor
# Visual Studio Code
wget -c https://go.microsoft.com/fwlink/?LinkID=620882 -O /tmp/vscode.zip
unzip -n /tmp/vscode -d $HOME/Applications


