#!/bin/sh

screen -X -S "px4_sitl.$(hostname)" stuff ^C

screen -X -S "gazebo.$(hostname)" stuff ^C
