FROM ros:noetic-perception-focal

# Set bash as default shell
SHELL ["/bin/bash", "-c"]

# Update image and install basic tools
RUN apt update -y \
    && apt upgrade -y \
    && apt install -y \
        bzip2 \
        cmake \
        curl \
        cppcheck \
        git \
        libgtest-dev \
        make \
        nano \
        python3-catkin-pkg \
        python3-empy \
        python3-nose \
        python3-pip \
        ssh-client \
        tree \
        vim \
        wget \
    && apt autoremove -y \
    && apt clean -y

# Add ROS apt repos and install/update everything
RUN curl -s https://raw.githubusercontent.com/ros/rosdistro/master/ros.asc | apt-key add -
RUN apt install -y \
        ros-noetic-rosserial \
        ros-noetic-catkin \
        rospack-tools \
    && apt autoremove -y \
    && apt clean -y

# Set bashrc to ROS default
RUN echo 'source /opt/ros/noetic/setup.bash' >> ~root/.bashrc

# Sym link python path for convenience
RUN ln -s /usr/bin/python3 /usr/bin/python \
    && ln -s /usr/bin/pip3 /usr/bin/pip

# Set generic startup params, but these should get overridden by VS Code
WORKDIR /embed
CMD ["/bin/bash", "-c"]