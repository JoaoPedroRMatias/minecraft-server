#!/bin/bash

# Stop docker
docker stop minecraft-server
docker rm minecraft-server
docker rmi minecraft-server:latest

# Recreate
docker build -t minecraft-server .
docker run -d -p 25565:25565 --name minecraft-server minecraft-server

# Logging
clear
docker logs -f minecraft-server 
