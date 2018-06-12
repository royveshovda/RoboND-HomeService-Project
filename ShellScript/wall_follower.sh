#!/bin/bash
catkin_ws=/home/workspace/catkin_ws
source ${catkin_ws}/devel/setup.bash

xterm -e "roslaunch turtlebot_gazebo turtlebot_world.launch world_file:=${catkin_ws}/src/home_service/Worlds/udacity.world" &
sleep 5
xterm -e "roslaunch turtlebot_gazebo gmapping_demo.launch custom_gmapping_launch_file:=${catkin_ws_dir}/src/home_service/wall_follower/launch/include/gmapping.launch.xml" &
sleep 5
xterm -e "roslaunch turtlebot_rviz_launchers view_navigation.launch" &
sleep 5
xterm -e "rosrun wall_follower wall_follower" &
sleep 5
