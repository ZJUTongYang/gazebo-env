#!/bin/bash

cd $PWD/firmware
source /opt/ros/kinetic/setup.bash
export PX4_HOME_LAT=-27.2747450
export PX4_HOME_LON=151.2891770
export PX4_HOME_ALT=25
no_sim=1 make posix_sitl_default gazebo_standard_vtol
