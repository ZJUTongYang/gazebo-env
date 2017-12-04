#!/bin/sh

screen -dmS "px4_sitl.$(hostname)" $PWD/px4_start.sh

screen -dmS "gazebo.$(hostname)" $PWD/gazebo_start.sh
