# /bin/bash
export OS_USERNAME=admin
export OS_TOKEN=ADMIN_TOKEN
export OS_URL=http://CONTROLLER:35357/v3
export OS_IDENTITY_API_VERSION=3

openstack service create --name keystone --description "Openstack Identity" identity
openstack endpoint create --region RegionOne identity public http://CONTROLLER:5000/v2.0
openstack endpoint create --region RegionOne identity internal http://CONTROLLER:5000/v2.0
openstack endpoint create --region RegionOne identity admin http://CONTROLLER:5000/v2.0
