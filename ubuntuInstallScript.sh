#!/bin/bash
#random packages that are useful
sudo apt-get install vim git vim-gtk rake exuberant-ctags ipython mercurial libopenscenegraph-dev cmake-curses-gui python-networkx

#vimrc/bashrc setup
cd ~/
git clone https://github.com/Zoe-McCarthy/dotfiles.git
~/dotfiles/install.sh

#ROS stuff
sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu precise main" > /etc/apt/sources.list.d/ros-latest.list'
wget http://packages.ros.org/ros.key -O - | sudo apt-key add -
sudo apt-get update
echo "hddtemp hddtemp/daemon boolean false" | sudo debconf-set-selections
sudo apt-get install ros-fuerte-pr2-desktop
echo "source /opt/ros/fuerte/setup.bash" >> ~/.bashrc
. ~/.bashrc
sudo easy_install -U rosdep rospkg
sudo apt-get install ros-fuerte-openni-camera ros-fuerte-openni-launch

#OpenRAVE stuff
sudo add-apt-repository ppa:openrave/release
sudo apt-get update
sudo apt-get install openrave0.6-dp-dev openrave0.6-dp-plugins-all
