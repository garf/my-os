# Install Docker and Docker-compose on Ubuntu 16.04

My user is **garf**


## Install Docker

`sudo apt-get install apt-transport-https ca-certificates`
`sudo apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 58118E89F3A912897C070ADBF76221572C52609D`
`sudo echo "deb https://apt.dockerproject.org/repo ubuntu-xenial main" > /etc/apt/sources.list.d/docker.list`
`sudo apt-get update && apt-get purge lxc-docker && apt-cache policy docker-engine && sudo apt-get install linux-image-extra-$(uname -r) docker-engine`
`sudo service docker start`

### Verify is installed

`sudo docker run hello-world`

## Install Docker Compose

`sudo usermod -aG docker garf`

Then need to relogin


