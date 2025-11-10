#!/bin/bash

# Docker Network Setup Script
# Usage: ./setup-docker-network.sh


# (Optional) Add NVIDIA's repository https://docs.nvidia.com/datacenter/cloud-native/container-toolkit/latest/install-guide.html
#sudo apt-get update && sudo apt-get install -y --no-install-recommends \
#   curl \
#   gnupg2
#
#curl -fsSL https://nvidia.github.io/libnvidia-container/gpgkey | sudo gpg --dearmor -o /usr/share/keyrings/nvidia-container-toolkit-keyring.gpg \
#  && curl -s -L https://nvidia.github.io/libnvidia-container/stable/deb/nvidia-container-toolkit.list | \
#    sed 's#deb https://#deb [signed-by=/usr/share/keyrings/nvidia-container-toolkit-keyring.gpg] https://#g' | \
#    sudo tee /etc/apt/sources.list.d/nvidia-container-toolkit.list
#
#sudo apt-get update
#
##NVIDIA Install
#export NVIDIA_CONTAINER_TOOLKIT_VERSION=1.18.0-1
#  sudo apt-get install -y \
#      nvidia-container-toolkit=${NVIDIA_CONTAINER_TOOLKIT_VERSION} \
#      nvidia-container-toolkit-base=${NVIDIA_CONTAINER_TOOLKIT_VERSION} \
#      libnvidia-container-tools=${NVIDIA_CONTAINER_TOOLKIT_VERSION} \
#      libnvidia-container1=${NVIDIA_CONTAINER_TOOLKIT_VERSION}


#activate caddy network
docker network create caddy-network

#build caddy image with docker compose
cd Caddy
docker compose -f docker-compose.yml build

#activate jellyfin
cd Jellyfin
docker compose -f docker-compose.yml build

#activate Gluetun and Mullvald

#activate immich

#activate tailscale

#activate game servers
