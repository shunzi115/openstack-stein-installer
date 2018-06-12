# OpenStack ocata installation script on Ubuntu 16.04.2 
# by kasidit chanchio
# vasabilab, dept of computer science, 
# Thammasat University, Thailand
#
# Copyright 2017  Kasidit Chanchio
#
#!/bin/bash -x
#
intype=vasabi-1234install_type4321-ibasav
full=full
#
# node setups
ssh -t openstack@controller sudo /bin/bash -x ./newComputeInstaller/controller/exe-stage00-SUDO-update.sh | tee log/s00-controller.log
ssh -t openstack@network sudo /bin/bash -x ./newComputeInstaller/network/exe-stage00-SUDO-update.sh | tee log/s00-network.log
ssh -t openstack@compute sudo /bin/bash -x ./newComputeInstaller/compute/exe-stage00-SUDO-update.sh | tee log/s00-compute.log
if [ "$intype" == "$full" ]
then
ssh -t openstack@compute1 sudo /bin/bash -x ./newComputeInstaller/compute1/exe-stage00-SUDO-update.sh | tee log/s00-compute.log
fi
printf "\n\nThis step reboots every node! Now, this node (the controller) will be rebooted. Wait until all rebooted nodes resume and proceed to run ./OS-installer-01-node-setup.sh... \n"
sudo reboot