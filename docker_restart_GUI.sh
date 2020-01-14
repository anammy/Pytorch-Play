#!/bin/bash

# Store the container name into the shell variable container_name
container_name=Pytorch-Play 
# Add container to list of permitted names for X server host access
xhost +local:`docker inspect --format='{{ .Config.Hostname }}' $container_name`
sudo docker start $container_name
sudo docker exec -it $container_name bash
