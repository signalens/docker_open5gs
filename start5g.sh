#!/bin/bash
set -a
source .env
sudo ufw disable
sudo sysctl -w net.ipv4.ip_forward=1
sudo cpupower frequency-set -g performance
sudo docker compose -f srsgnb.yaml up -d && sudo docker container attach srsgnb
