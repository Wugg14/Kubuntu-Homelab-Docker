#!/bin/bash

# Docker Network Setup Script
# Usage: ./setup-docker-network.sh

# Create docker directory if it doesn't exist
sudo mkdir -p /etc/docker

# Add NVIDIA's repository
#curl -fsSL https://nvidia.github.io/libnvidia-container/gpgkey | sudo gpg --dearmor -o /usr/share/keyrings/nvidia-container-toolkit-keyring.gpg
#curl -s -L https://nvidia.github.io/libnvidia-container/ubuntu20.04/libnvidia-container.list | \
#docker run --rm --gpus all nvidia/cuda:12.2.0-base-ubuntu20.04 nvidia-smi

# Install Nvidia Drivers for Docker
#sudo apt-get update
#sudo apt-get install -y nvidia-container-toolkit

#build caddy image with docker compose
cd Caddy
docker compose -f docker-compose.yml build

#activate caddy network
docker network create caddy-network

#activate jellyfin

#activate immich

#activate tailscale

#activate game servers
