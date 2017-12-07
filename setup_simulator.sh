#!/bin/sh

# Clone PX4 repository
git clone https://github.com/px4/firmware $PWD/firmware

# Build SITL and wait for it to ask for input, then kill
cd $PWD/firmware
nohup sh -c 'HEADLESS=1 make posix_sitl_default gazebo' &
echo "Waiting for SITL to build..."
# Adding a tee in here got annoying
tail -f -n0 $PWD/nohup.out | grep -qe 'Please start the flight simulator to proceed'
if [ $? == 1 ]; then
    echo "Build failed, check firmware/nohup.out for errors!"
fi
kill $!
rm $PWD/nohup.out

# Make links to models and worlds
cd ..
ln -s $PWD/models/australia_plane $PWD/firmware/Tools/sitl_gazebo/models/australia_plane
ln -s $PWD/models/standard_vtol_cam/ $PWD/firmware/Tools/sitl_gazebo/models/standard_vtol_cam
ln -s $PWD/models/web_cam/ $PWD/firmware/Tools/sitl_gazebo/models/web_cam
ln -s $PWD/worlds/standard_vtol_cam.world $PWD/firmware/Tools/sitl_gazebo/worlds/standard_vtol_cam.world
echo "Setup Simulator Done."
