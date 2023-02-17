FROM ros:noetic-perception-focal
# RUN rm /bin/sh && ln -s /bin/bash /bin/sh

RUN sudo apt update && sudo apt upgrade -y && sudo apt-get update && sudo apt-get upgrade -y

RUN sudo apt install -y curl nano git ssh-client
RUN curl -s https://raw.githubusercontent.com/ros/rosdistro/master/ros.asc | sudo apt-key add -

RUN sudo apt-get install -y cmake python3-catkin-pkg python3-empy python3-nose libgtest-dev
RUN sudo apt install -y ros-noetic-rosserial ros-noetic-catkin rospack-tools

COPY ./scripts/ /embed-scripts
RUN sudo chmod +x /embed-scripts/*

RUN sudo mkdir /embed/

# Moify the bashrc file
RUN echo 'source /opt/ros/noetic/setup.bash' >> ~root/.bashrc

# Start a ROS workspace
RUN mkdir -p /embed/catkin_ws/src && cd /embed/catkin_ws/

COPY ./scripts/* /embed/catkin_ws
RUN sudo chmod +x /embed/catkin_ws/*

WORKDIR /embed/catkin_ws

ENTRYPOINT /bin/bash
