#!/bin/bash

cd $PWD/firmware
source /opt/ros/kinetic/setup.bash
source $PWD/Tools/setup_gazebo.bash $PWD $PWD/build/posix_sitl_default

roslaunch gazebo_ros empty_world.launch world_name:=$PWD/Tools/sitl_gazebo/worlds/standard_vtol_cam.world
