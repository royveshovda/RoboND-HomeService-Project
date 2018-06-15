#!/bin/bash
source /home/workspace/catkin_ws/devel/setup.bash

xterm -e "roslaunch turtlebot_gazebo turtlebot_world.launch world_file:=/home/workspace/catkin_ws/src/home_service/Worlds/udacity.world" &
sleep 5

xterm -e "roslaunch turtlebot_gazebo amcl_demo.launch map_file:=/home/workspace/catkin_ws/src/home_service/Worlds/udacity.yaml 3d_sensor:=kinect" &
sleep 5

xterm -e "roslaunch turtlebot_rviz_launchers view_navigation.launch" &
sleep 5