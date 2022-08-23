# Mr Mud 1.4 sandbox

## Requirements

* Vagrant - https://www.vagrantup.com/
* VirtualBox - https://www.virtualbox.org/

## How to 

1. Clone repository
2. Start/Create vritual box: `vagrant up`
3. Initiate some required files:
```
vagrant ssh -c "cp /vagrant/clans/clan.lst.dist /vagrant/clans/clan.lst \
    && cp /vagrant/area_current/owner.lst.dist /vagrant/area_current/owner.lst \
    && cp /vagrant/area_current/castle/castles.are.dist /vagrant/area_current/castle/castles.are"
```
4. Compile MUD: `vagrant ssh -c "cd /vagrant/src/ && make"`
5. Start MUD server: `vagrant ssh -c "cd /vagrant/area_current && ../bin/md"`
6. Connect to MUD using any telnet software to address: `localhost` and port `4321`