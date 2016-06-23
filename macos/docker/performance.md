# How to improve Docker performance on MacOS

By default Mac OS uses virtual machine to install environment. 

There is a problem with performance of file sync between Mac OS and Virtual machine, 
which could be fixed with following solution:

[https://github.com/adlogix/docker-machine-nfs](https://github.com/adlogix/docker-machine-nfs)

So, it's very easy to improve performance:

``` bash
brew install docker-machine-nfs # or download it manually from github
docker-machine-nfs default # default is the name of your Virtual machine
docker-compose up -d # run environment again
```