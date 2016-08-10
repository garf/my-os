# Install necessary packages Ubuntu 16.04

``` bash
sudo apt update && apt -y install yakuake mc git git-core git-gui vim thunderbird curl
```


## Install Composer

``` bash
sudo apt -y install php-cli php-mbstring php-xml php-xdebug php-curl php-mysql php-gd
php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
php -r "if (hash_file('SHA384', 'composer-setup.php') === '070854512ef404f16bac87071a6db9fd9721da1684cd4589b1196c3faf71b9a2682e2311b36a5079825e155ac7ce150d') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;"
php composer-setup.php
php -r "unlink('composer-setup.php');"
sudo mv composer.phar /usr/local/bin/composer
composer global require "hirak/prestissimo:^0.3"
```

## Install Sublime Text 3 from PPA

``` bash
sudo add-apt-repository ppa:webupd8team/sublime-text-3
sudo apt update && apt install sublime-text-installer 
```

## Install Nvidia Drivers from PPA

``` bash
sudo add-apt-repository ppa:graphics-drivers/ppa
sudo apt update && apt -y install nvidia-367
```
