# menambakan network lain
nova network-create vmnet --fixed-range-v4=10.10.10.0/24 --bridge-interface=br100 --multi-host=T

# menambahkan firewall untuk akses ICMP and SSH
nova secgroup-add-rule default tcp 22 22 0.0.0.0/0
nova secgroup-add-rule default icmp -1 -1 0.0.0.0/0
