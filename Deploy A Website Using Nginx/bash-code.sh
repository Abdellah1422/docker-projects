#!/bin/bash

docker build -t website .

docker run -itd --rm -p 4000:80 --name web website

#make new image from The cotainer with name : path of user in docker hub
docker commit web abdallah1422/new-web

#login to docker account
docker login

#push image into docker HUB
docker push abdallah1422/new-web



