# Base image
FROM duckietown/rpi-duckiebot-base:latest

# enable ARM
RUN [ "cross-build-start" ]

# add user to video group
RUN usermod -a -G video root

# install ENTRYPOINT script
ADD assets/entrypoint_camera.sh /root/entrypoint_camera.sh
RUN chmod +x /root/entrypoint_camera.sh

# disable ARM
RUN [ "cross-build-end" ]

# configure ENTRYPOINT
ENTRYPOINT ["/ros_entrypoint.sh", "/root/entrypoint_camera.sh"]
