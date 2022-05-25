## Instaling some basic applications
sudo snap install slack --classic
sudo snap install VLC
sudo snap install spotify
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb


## Installing ZSH and setting it default
sudo apt update 
sudo apt install zsh -y
echo $SHELL
chsh -s $(which zsh)

## Installing and Configuring git and other dependencies for asdf
sudo apt install coreutils curl git -y
git config --global user.name "theshivthakur"
git config --global user.email "shivam.thakur@sharpsell.ai"

## Installing VSCode
sudo apt install software-properties-common apt-transport-https wget -y
wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main"
sudo apt install code

## Installing Android Studio
sudo snap install android-studio --classic

## Installing linuxbrew and Adding it to ZSH PATH
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
echo 'eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"' >> ${ZDOTDIR:-~}/.zshrc
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
sudo apt-get install build-essential
brew install gcc

## Installing ASDF and Adding it to ZSH PATH
brew install asdf
echo -e "\n. $(brew --prefix asdf)/libexec/asdf.sh" >> ${ZDOTDIR:-~}/.zshrc

## Installing dependencies for Python and Dart
brew install openssl readline

## Installing the Python with ASDF
asdf plugin add python
asdf install python latest
asdf global python latest
asdf local python latest

## Installing dependencies for NodeJs
brew install gpg gawk

## Installing the NodeJs with ASDF
asdf plugin add nodejs https://github.com/asdf-vm/asdf-nodejs.git
asdf install nodejs latest
asdf global nodejs latest
asdf local nodejs latest

## Installing the Dart with ASDF
asdf plugin-add dart https://github.com/patoconnor43/asdf-dart.git
asdf install dart latest
asdf global dart latest
asdf local dart latest

## Installing the Flutter with ASDF
asdf plugin-add flutter
