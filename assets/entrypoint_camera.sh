#!/usr/bin/env bash


# source docker env and catkin_ws
source /home/software/docker/env.sh
source /home/software/catkin_ws/devel/setup.bash

# launch camera node

echo launching camera node
echo Configuration:
echo ROS_MASTER_URI=$ROS_MASTER_URI
echo ROS_IP=${ROS_IP}
echo VEHICLE_NAME=$VEHICLE_NAME
echo DUCKIEFLEET_ROOT=$DUCKIEFLEET_ROOT
echo HOSTNAME=$HOSTNAME

roslaunch --wait duckietown camera.launch veh:=${VEHICLE_NAME}
