#!/bin/sh

git clone https://github.com/px4/firmware $PWD/firmware
no_sim=1 make posix_sitl_default gazebo
ln -s $PWD/models/australia_plane $PWD/firmware/Tools/sitl_gazebo/models/australia_plane
ln -s $PWD/models/standard_vtol_cam/ $PWD/firmware/Tools/sitl_gazebo/models/standard_vtol_cam
ln -s $PWD/models/web_cam/ $PWD/firmware/Tools/sitl_gazebo/models/web_cam
ln -s $PWD/worlds/standard_vtol_cam.world $PWD/firmware/Tools/sitl_gazebo/worlds/standard_vtol_cam.world
