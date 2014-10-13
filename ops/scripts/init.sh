#!/bin/sh

#sudo bash -c "echo '$REPO' > /etc/apt/sources.list"

sudo apt-get check
sudo apt-get update
sudo apt-get -y upgrade

# install git
sudo apt-get install -y git
