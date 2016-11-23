testinfra --connection=ansible --ansible-inventory ~/klist.py --sudo --hosts=keystone test_keystone.py -v
testinfra --connection=ansible --ansible-inventory ~/klist.py --sudo --hosts=glance test_glance.py -v
testinfra --connection=ansible --ansible-inventory ~/klist.py --sudo --hosts=cinder test_cinder.py -v
testinfra --connection=ansible --ansible-inventory ~/klist.py --sudo --hosts=cinder test_cinder_volume.py -v
testinfra --connection=ansible --ansible-inventory ~/klist.py --sudo --hosts=neutron test_neutron.py -v
testinfra --connection=ansible --ansible-inventory ~/klist.py --sudo --hosts=nova test_nova.py -v
testinfra --connection=ansible --ansible-inventory ~/klist.py --sudo --hosts=nova test_nova_compute.py -v
testinfra --connection=ansible --ansible-inventory ~/klist.py --sudo --hosts=heat test_heat.py -v
testinfra --connection=ansible --ansible-inventory ~/klist.py --sudo --hosts=ceilometer test_ceilometer.py -v
testinfra --connection=ansible --ansible-inventory ~/klist.py --sudo --hosts=horizon test_horizon.py -v
