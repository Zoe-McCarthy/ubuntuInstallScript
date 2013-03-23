#!/bin/bash
cd ~/Downloads
wget us.download.nvidia.com/XFree86/Linux-x86_64/310.40/NVIDIA-Linux-x86_64-310.40.run

./NVIDIA-Linux-x86_64-310.40.run
#random packages that are useful
sudo apt-get install mercurial libopenscenegraph-dev cmake-curses-gui -y

#

#ROS stuff
sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu precise main" > /etc/apt/sources.list.d/ros-latest.list'
wget http://packages.ros.org/ros.key -O - | sudo apt-key add -
sudo apt-get update
#echo "hddtemp hddtemp/daemon boolean false" | sudo debconf-set-selections # not sure what this is
sudo apt-get install ros-fuerte-desktop-full -y

# setup ros fuerte workspace
sudo apt-get install python-rosinstall python-rosdep -y
rosws init ~/fuerte_workspace /opt/ros/fuerte
mkdir ~/fuerte_workspace/sandbox
rosws set ~/fuerte_workspace/sandbox

#echo "source /opt/ros/fuerte/setup.bash" >> ~/.bashrc
#. ~/.bashrc

# DRC simulator stuff
sudo sh -c 'echo "deb http://packages.osrfoundation.org/drc/ubuntu precise main" > /etc/apt/sources.list.d/drc-latest.list'
wget http://packages.osrfoundation.org/drc.key -O - | sudo apt-key add -
sudo apt-get update
sudo apt-get install drcsim -y

#sudo apt-get install ros-fuerte-openni-camera ros-fuerte-openni-launch

#OpenRAVE stuff
#sudo add-apt-repository ppa:openrave/release
#sudo apt-get update
#sudo apt-get install openrave0.6-dp-dev openrave0.6-dp-plugins-all
