#!/bin/bash -e

on_chroot << EOF
echo 'Pulling Docker images'
docker pull plossys/blinkt
docker pull sealsystems/visualizer:latest-arm
EOF
