#!/bin/bash

# Docker Network Setup Script
# Usage: ./setup-docker-network.sh


#activate caddy network
#docker network create caddy-network

#build caddy image with docker compose
cd Caddy
docker compose up -d

#activate jellyfin
cd ../Jellyfin
docker compose up -d

#activate Gluetun and QBittorrent
cd ../Gluetun
docker compose up -d
cd ../Qbittorent
docker compose up -d

#activate immich

#activate tailscale

#activate game servers
