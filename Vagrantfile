$vm_memory                = 512
$vm_cpus                  = 2
$vbguest_required         = true

Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/xenial32"
  config.ssh.forward_agent = true
  config.vm.network "forwarded_port", guest: 4321, host: 4321

  config.vm.provision "ansible_local" do |ansible|
    ansible.become = true
    ansible.playbook = "ansible/main.yaml"
    ansible.compatibility_mode = "2.0"
    ansible.verbose = false
  end

  config.vm.provision "shell", name: "clan_lst", inline: "cp /vagrant/clans/clan.lst.dist /vagrant/clans/clan.lst"
  config.vm.provision "shell", name: "owner_lst", inline: "cp /vagrant/area_current/owner.lst.dist /vagrant/area_current/owner.lst"
  config.vm.provision "shell", name: "castles_are", inline: "cp /vagrant/area_current/castle/castles.are.dist /vagrant/area_current/castle/castles.are"
  config.vm.provision "shell", name: "compile", inline: "cd /vagrant/src && make"
  config.vm.provision "shell", name: "start", run: "always", inline: "cd /vagrant/src && screen -d -m ./startup"

  config.vm.provider :virtualbox do |v|
    v.linked_clone = true
    v.customize [
        'modifyvm', :id,
        '--natdnshostresolver1', 'on',
        '--natdnsproxy1', 'on',
        '--memory', $vm_memory,
        '--cpus', $vm_cpus,
        '--uartmode1', 'disconnected'
    ]
  end
end
