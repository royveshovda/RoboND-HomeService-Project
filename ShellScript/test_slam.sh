#!/bin/bash
source /home/workspace/catkin_ws/devel/setup.bash

xterm -e roslaunch turtlebot_gazebo turtlebot_world.launch world_file:=/home/workspace/catkin_ws/src/home_service/Worlds/udacity.world &
sleep 10
xterm -e roslaunch turtlebot_gazebo gmapping_demo.launch &
sleep 5
xterm -e roslaunch turtlebot_rviz_launchers view_navigation.launch &
sleep 5
xterm -e roslaunch turtlebot_teleop keyboard_teleop.launch &
sleep 5
