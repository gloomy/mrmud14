# Mr Mud 1.4 sandbox

## Requirements

* Vagrant - https://www.vagrantup.com/
* VirtualBox - https://www.virtualbox.org/

## How to setup

1. Clone repository
2. Start/Create virtual box: `vagrant up`

## How to connect

After the successful setup MUD will be running on VM and Host telnet port 4321:

Connect: `telnet 0 4321`

There is Tintin++ installed the VM which can be used to connect:
```
vagrant ssh -c "tt++ -e '#session c 0 4321'"
```

To shutdown the Tintin++ issue `#end` command

To shutdown the VM issue `vagrant halt`

## Players

MUD comes with pre-created player `Chaos` (password `chaos`) which you can use to try it out.

See `wizhelp` command for god commands.

Or create new player and have fun!