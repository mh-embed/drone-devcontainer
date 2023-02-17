if [ $( sudo docker ps -a -f name=drone-ros | wc -l ) -eq 2 ]; then
    sudo docker start drone-ros
    sudo docker exec -it drone-ros bash
else
    sudo docker run --name drone-ros -it danielhouevr315/mhacker-drone-ros:latest --volume drone-ros-catkin-ws:/embed/
fi
