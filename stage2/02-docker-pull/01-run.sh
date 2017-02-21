#!/bin/bash -e

on_chroot << EOF
echo 'Pulling Docker images'
systemctl start docker
docker pull plossys/blinkt
docker pull sealsystems/visualizer:latest-arm
systemctl stop docker
rm -f /etc/docker/key.json
EOF
