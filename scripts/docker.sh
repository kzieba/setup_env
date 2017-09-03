#!/usr/bin/env bash

#sudo apt-get remove docker docker-engine docker.io

#sudo apt-get update

#sudo apt-get install \
#    linux-image-extra-$(uname -r) \
#    linux-image-extra-virtual

#sudo apt-get update

#sudo apt-get install \
#    apt-transport-https \
#    ca-certificates \
#    curl \
#    software-properties-common

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

sudo apt-key fingerprint 0EBFCD88

#check that result is like this below

#pub   4096R/0EBFCD88 2017-02-22
#      Key fingerprint = 9DC8 5822 9FC7 DD38 854A  E2D8 8D81 803C 0EBF CD88
#uid                  Docker Release (CE deb) <docker@docker.com>
#sub   4096R/F273FCD8 2017-02-22

sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"

sudo apt-get update

sudo apt-get install docker-ce

#On production systems, you should install a specific version of Docker CE instead of always using the latest. This output is truncated. List the available versions.
#apt-cache madison docker-ce
#docker-ce | 17.06.0~ce-0~ubuntu | https://download.docker.com/linux/ubuntu xenial/stable amd64 Packages
#sudo apt-get install docker-ce=<VERSION>

sudo docker run hello-world

wget https://get.docker.com/
