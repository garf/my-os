#!/bin/bash
cd ~
sudo add-apt-repository -y ppa:webupd8team/sublime-text-3
sudo add-apt-repository -y ppa:webupd8team/java
sudo add-apt-repository -y ppa:graphics-drivers/ppa
sudo add-apt-repository -y ppa:jtaylor/keepass
sudo apt-add-repository -y ppa:dlech/keepass2-plugins
sudo sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list'
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add - 

sudo apt update
sudo apt dist-upgrade
sudo apt -y install yakuake mc git git-core git-gui vim thunderbird curl sublime-text-installer nvidia-367\
 unrar p7zip p7zip-full\
 oracle-java8-installer gir1.2-gnomekeyring-1.0 libgnome-keyring0\
 zsh git-core python-pip\
 keepass2 mono-dmcs libmono-system-management4.0-cil\
 libmono-system-numerics4.0-cil xul-ext-keefox keepass2-plugin-keepasshttp\
 google-chrome-stable

mkdir -p tmp
cd tmp
wget https://downloads.slack-edge.com/linux_releases/slack-desktop-2.7.0-amd64.deb -O slack.deb
sudo dpkg -i slack.deb
sudo apt -f -y install

wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh
chsh -s `which zsh`

su -c 'pip install git+git://github.com/Lokaltog/powerline'
wget https://github.com/Lokaltog/powerline/raw/develop/font/PowerlineSymbols.otf https://github.com/Lokaltog/powerline/raw/develop/font/10-powerline-symbols.conf
sudo mv PowerlineSymbols.otf /usr/share/fonts/
sudo fc-cache -vf
sudo mv 10-powerline-symbols.conf /etc/fonts/conf.d/
sudo echo "" >> /etc/zsh/zshrc
sudo echo "if [[ -r /usr/local/lib/python2.7/dist-packages/powerline/bindings/zsh/powerline.zsh ]]; then" >> /etc/zsh/zshrc
sudo echo "    source /usr/local/lib/python2.7/dist-packages/powerline/bindings/zsh/powerline.zsh" >> /etc/zsh/zshrc
sudo echo "fi" >> /etc/zsh/zshrc

mkdir -p ~/.oh-my-zsh/custom/themes/
cd ~/.oh-my-zsh/custom/themes/
wget https://raw.githubusercontent.com/garf/my-os/master/linux/oh-my-zsh/agnoster.zsh-theme
sed -i '/ZSH_THEME/c\ZSH_THEME="agnoster"' ~/.zshrc
cd ~/tmp
wget https://download.jetbrains.com/webide/PhpStorm-2017.2.1.tar.gz -O phpstorm.tar.gz
wget https://download.jetbrains.com/idea/ideaIC-2017.2.1.tar.gz -O idea.tar.gz
mkdir -p ~/programs
tar -xzf phpstorm.tar.gz -C ~/programs/
tar -xzf idea.tar.gz -C ~/programs/

cd ~/tmp && wget -O - "https://www.dropbox.com/download?plat=lnx.x86_64" | tar xzf -
~/tmp/.dropbox-dist/dropboxd &

git config --global user.email "garipov.dinar@gmail.com"
git config --global user.name "Dinar Garipov"

