#!/bin/bash

docker-compose up -d --build

docker-compose up -d

docker-compose down --rmi --all
