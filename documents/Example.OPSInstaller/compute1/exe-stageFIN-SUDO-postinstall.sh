# OpenStack ocata installation script on Ubuntu 16.04.2 
# by kasidit chanchio
# vasabilab, dept of computer science, 
# Thammasat University, Thailand
#
# Copyright 2017  Kasidit Chanchio
#
# You must run this script with sudo or as root.
#
# restore  sudoers
#!/bin/bash -x
cd $HOME/OPSInstaller/compute1
pwd
cp files/sudoers.save /etc/sudoers
