#!/usr/bin/env bash


# source docker env and catkin_ws
source /home/software/docker/env.sh
source /home/software/catkin_ws/devel/setup.bash

# launch camera node

echo
echo Configuration sanity check:
echo
echo HOSTNAME=${HOSTNAME:-NOT-SET}
echo "^ on linux systems this is just \"duckiebot\", does not include \".local\""
echo "it is a private name, in the sense that it is not resolvable by external computers"
echo
echo
echo ROS_MASTER_URI=${ROS_MASTER_URI:-NOT-SET}
echo "^ the above should have either an ip or a fully-formed name that resolves to an IP"
echo "  it is wrong if it is \"duckiebot:11311\" - it should be \"duckiebot.local:11311\""
echo
echo ROS_HOSTNAME=${ROS_HOSTNAME:-NOT-SET}
echo "^ same thing, this should be a fully-formed name (duckiebot.local) rather than duckiebot"
echo
echo ROS_IP=${ROS_IP:-NOT-SET}
echo "^ this might be unset but better that it is set"
echo
echo VEHICLE_NAME=${VEHICLE_NAME:-NOT-SET}
echo "^ this should be the naked hostname - \"duckiebot\" and NOT \"duckiebot.local\""
echo
echo DUCKIEFLEET_ROOT=${DUCKIEFLEET_ROOT:-NOT-SET}
echo

echo "Finally, launching:"
echo roslaunch --wait duckietown camera.launch veh:=${VEHICLE_NAME}
roslaunch --wait duckietown camera.launch veh:=${VEHICLE_NAME}
