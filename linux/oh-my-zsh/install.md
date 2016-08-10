# Install Oh My Zsh in ubuntu 16.04

``` bash
sudo apt install zsh git-core
wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh
```

``` bash
chsh -s `which zsh`
```
## Agnoster theme installation

### Install [Powerline Fonts](https://github.com/powerline/fonts)


``` bash
sudo apt install python-pip git
su -c 'pip install git+git://github.com/Lokaltog/powerline'
wget https://github.com/Lokaltog/powerline/raw/develop/font/PowerlineSymbols.otf https://github.com/Lokaltog/powerline/raw/develop/font/10-powerline-symbols.conf
sudo mv PowerlineSymbols.otf /usr/share/fonts/
sudo fc-cache -vf
sudo mv 10-powerline-symbols.conf /etc/fonts/conf.d/
```

Add this lines to **/etc/zsh/zshrc**

``` bash
if [[ -r /usr/local/lib/python2.7/dist-packages/powerline/bindings/zsh/powerline.zsh ]]; then
    source /usr/local/lib/python2.7/dist-packages/powerline/bindings/zsh/powerline.zsh
fi
```

### Install Theme

Create theme directory **~/.oh-my-zsh/custom/themes/**

And copy [this file](/linux/oh-my-zsh/agnoster.zsh-theme) there.

Then change config line in **~/.zshrc** to

``` bash
ZSH_THEME="agnoster"
```

Restart you computer

