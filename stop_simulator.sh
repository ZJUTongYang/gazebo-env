#!/bin/sh

screen -X -S "px4_sitl.$(hostname)" quit

screen -X -S "gazebo.$(hostname)" quit
