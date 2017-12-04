Gazebo Simulation Environment
=============================

This repository provides custom models, worlds, and scripts to easily setup and run simulations for the Cybirds team.

**Requirements**
* ROS Kinetic environment (tested with [ros-kinetic-desktop-full](https://aur.archlinux.org/packages/ros-kinetic-desktop-full/))
* pip install numpy empy toml jinja2 catkin-pkg

**Instructions**
* Run `setup_gazebo.sh`
* Run `run_simulator.sh` to start the simulation
* Interact with the simulation using the UI or the two screen sessions (PX4 SITL and Gazebo)
* Run `stop_simulator.sh` to kill the simulation
