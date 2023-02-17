# drone-ros-docker
MHackers Embedded 2023 Drone Project ROS Docker Images

## Usage
1. Install [Docker](https://www.docker.com)
2. Get this Github Repo
3. run docker
```bash
./drone_start.sh
```
4. When there is a new version of the image available, run
```
./drone_clean.sh
```
and then start the dev container following step 3.

5. By default, ONLY data in /embed/ directory (inside the container) will be saved in a permanent volume in docker. Changes in other parts of the system will NOT be saved. If your program needs another package, email or @me on Slack and I will update the images within 24 hrs. Please follow step 3 and 4 to use updated images. 

## Build
1. Head to the dev/ directory
```bash
cd dev
```
2. Change the tag in makec.sh (I don't know anything about shell this is the best I can do)
3. Run
```
./makec.sh
```
to build the container. 
4. To push to Docker Hub, run
```
docker push danielhouevr315/mhacker-drone-ros:<tag>
```

## Learn More About ROS Development
This stack is based on ROS noetic. 

I recommend going through the first six of the [Official ROS Tutorials](http://wiki.ros.org/ROS/Tutorials) to get started with ROS development. 
