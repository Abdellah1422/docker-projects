#!/bin/bash
#Update your existing packages:
sudo apt update

#Install a prerequisite packages which allows apt utilize HTTPS:
sudo apt install apt-transport-https ca-certificates curl software-properties-common

#Add GPG key for the official Docker repo to the Ubuntu system:
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

#Add the Docker repo to APT sources:
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu focal stable"

#Update the  database with the Docker packages from the added repo:
sudo apt update


#Install Docker software:
sudo apt install docker-ce


#Docker should now be installed, the daemon started, and the process enabled to start on boot. To verify:
sudo systemctl status docker
sudo systemctl start docker
sudo systemctl enable docker
sudo systemctl status docker

#See Groups:
groups

#add user to docker Groups:
#sudo usermod -aG docker ${USER}
sudo usermod -aG docker ubuntu


#Should restart machine
reboot

#See Groups: # and you  will find user added to docker group
groups >> group-info.txt


#docker version # and see the containerd runC

docker -v
