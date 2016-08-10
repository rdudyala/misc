#!/bin/sh
sudo sed -i "s/.*127.0.0.1.*/127.0.0.1 localhost $(hostname)/" /etc/hosts
/home/ubuntu/openstack-scripts/ceilometer_init_script.sh
echo $PWD
cd /home/ubuntu/pub-sub/ceilometer_pub_sub
nohup ./sub_main.py &
echo $PWD
cd -
echo $PWD
