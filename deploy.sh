#!/usr/bin/env bash

# run container
docker run --network="host" --device=/dev/vchiq:/dev/vchiq duckietown/rpi-ros-kinetic-camera-node:latest
