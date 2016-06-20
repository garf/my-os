# Install Docker and Docker-compose on Ubuntu 16.04

My user is **garf**


## Install Docker

``` bash
sudo apt-get install apt-transport-https ca-certificates
sudo apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 58118E89F3A912897C070ADBF76221572C52609D
sudo echo "deb https://apt.dockerproject.org/repo ubuntu-xenial main" > /etc/apt/sources.list.d/docker.list
sudo apt-get update && apt-get purge lxc-docker && apt-cache policy docker-engine && sudo apt-get install linux-image-extra-$(uname -r) docker-engine
sudo service docker start
```

**Verify that Docker is installed**

``` bash
sudo docker run hello-world
sudo usermod -aG docker garf
```

Then need to relogin

## Install Docker Compose

``` bash
curl -L https://github.com/docker/compose/releases/download/1.7.1/docker-compose-`uname -s`-`uname -m` > /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
```

**Code completion** *optional*

```bash
curl -L https://raw.githubusercontent.com/docker/compose/$(docker-compose version --short)/contrib/completion/bash/docker-compose > /etc/bash_completion.d/docker-compose
mkdir -p ~/.zsh/completion
curl -L https://raw.githubusercontent.com/docker/compose/$(docker-compose version --short)/contrib/completion/zsh/_docker-compose > ~/.zsh/completion/_docker-compose
```

Add this line to **~/.zshrc**

``` bash
fpath=(~/.zsh/completion $fpath)
autoload -Uz compinit && compinit -i
```

Then reload the shell

``` bash
exec $SHELL -l
```





