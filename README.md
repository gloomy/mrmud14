# Mr Mud 1.4 sandbox

## Requirements

* Vagrant - https://www.vagrantup.com/
* VirtualBox - https://www.virtualbox.org/

## How to setup

1. Clone repository
2. Start/Create virtual box: `vagrant up`
3. Initiate some required files:
```
vagrant ssh -c "cp /vagrant/clans/clan.lst.dist /vagrant/clans/clan.lst \
    && cp /vagrant/area_current/owner.lst.dist /vagrant/area_current/owner.lst \
    && cp /vagrant/area_current/castle/castles.are.dist /vagrant/area_current/castle/castles.are"
```
4. Compile MUD: `vagrant ssh -c "cd /vagrant/src/ && make"`
5. Start MUD server: `vagrant ssh -c "cd /vagrant/area_current && ../bin/md"`

## How to connect

After the successful setup MUD will be running on VM and Host telnet port 4321

There is Tintin++ installed the VM which can be used to connect:
```
vagrant ssh -c "tt++ -e '#session c localhost 4321'"
```

To shutdown the mud client use `#end` command

## Players

MUD comes with pre-created player `Chaos` (password `chaos`) which you can use to try it out.

See `wizhelp` command for god commands.

Or create new player and have fun!