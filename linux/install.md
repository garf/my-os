# Install necessary packages Ubuntu 16.04

``` bash
apt-get -y install yakuake mc git git-core git-gui vim thunderbird
```


## Install Composer

``` bash
apt-get -y install php-cli php-mbstring php-xml php-xdebug php-curl curl php-mysql php-gd
php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
php -r "if (hash_file('SHA384', 'composer-setup.php') === '070854512ef404f16bac87071a6db9fd9721da1684cd4589b1196c3faf71b9a2682e2311b36a5079825e155ac7ce150d') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;"
php composer-setup.php
php -r "unlink('composer-setup.php');"
sudo mv composer.phar /usr/local/bin/composer
composer global require "hirak/prestissimo:^0.3"
```