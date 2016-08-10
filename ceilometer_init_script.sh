IP=$(ifconfig | awk '/inet addr/{print substr($2,6)}' | grep "10.0.3")
#IP=$(ifconfig | awk '/inet addr/{print substr($2,6)}' | grep "10.11.10")
echo $IP
sudo rabbitmqctl add_user openstack "password"
sudo rabbitmqctl set_permissions openstack ".*" ".*" ".*"
python /home/ubuntu/openstack-scripts/update-endpoints.py --username root --password password --host localhost --endpoint $IP --endpoint-type public
python /home/ubuntu/openstack-scripts/update-endpoints.py --username root --password password --host localhost --endpoint $IP --endpoint-type admin
