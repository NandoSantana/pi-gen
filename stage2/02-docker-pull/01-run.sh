#!/bin/bash -e

on_chroot << EOF
echo 'Showing Docker version'
docker version
echo 'Starting Docker'
systemctl start docker
echo 'Showing Docker version'
docker version
echo 'Showing processes'
ps -ef
echo 'Pulling Docker images'
docker pull plossys/blinkt
docker pull sealsystems/visualizer:latest-arm
systemctl stop docker
rm -f /etc/docker/key.json
EOF
