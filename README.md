# IOWA repository

[![Build Status](https://travis-ci.org/karmab/iowa.svg?branch=master)](https://travis-ci.org/karmab/iowa)

A set of roles to deploy openstack in a spread per component way


## TODO LIST

- improve documentation !!!
- create a simple web ui to assign roles
- create a specific bridge mappings for compute nodes
- document cinder enabled backends
- add ldap support in keystone? keystone v3 ?
- document how to run the role with a custom variables files ( and with a specific component through tags)
- document that when creating a db, the corresponding hash with its associated dbuser, dbpassword and dbname is needed for mysql role to work correctly
- check if notifications_designate as topic is really needed or defaulting to notifications is enough

## SOME TIPS AROUND CONF

## CINDER
 - volume_driver can be either 
   - cinder.volume.drivers.lvm.LVMISCSIDriver . This is the default. In this case volume_group can be specified
   - cinder.volume.drivers.nfs.NfsDriver In this case , one can specify a different location and use the nfs_shares array to specify exports to add

## NEUTRON
 - grab tenant id and inject it in the conf
 - set tunneling ip stuff and create br-tun

## NOVA
 - documento nova.novncproxy_url as it cant be set in defaults var file
 - virt_type is qemu by default, you can set  nova.virt_type to kvm if using nested ( it s giving some issues actually)

# INSTALLING ON RHEL
note that those roles dont handle subscriptions
also note that newton requires the rhel-7-server-openstack-10-devtools-rpms channel



## RUN SPECIFIC COMPONENT

## OVERRIDING VARIABLES

Either use extra-vars or a group_var directory

```
ansible-playbook init.yml --extra-vars "@samples/madrid.yaml"
```

```
ansible-playbook init.yml --tags keystone
```


# DEPLOYING MULTIPLE NODES WITH ANSIBLE

- make the role visible

```
export ANSIBLE_ROLES_PATH=roles
```

- allinone
```
ansible-playbook -i ~/klist.py controller.yml
```

- api only
```
ansible-playbook -i ~/klist.py controller.yml --tags api
```

- controller stuff
```
ansible-playbook -i ~/klist.py site.yml --tags controller,mysql,rabbitmq,mongodb
```

- compute
```
ansible-playbook -i ~/klist.py compute.yml --tags compute
```

##RUNNING TESTS

```
testinfra --connection=ansible --ansible-inventory ~/klist.py --sudo --hosts=heat tests/test_heat.py  -v
```


##Problems?

Send me a mail at [karimboumedhel@gmail.com](mailto:karimboumedhel@gmail.com) !

Mac Fly!!!

karmab
