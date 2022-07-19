$vm_image                 = 'ubuntu/xenial32'
$vm_memory                = 512
$vm_cpus                  = 2
$vbguest_required         = true
$vm_ip                    = '192.168.0.20'

Vagrant.configure("2") do |config|
  config.vm.box = $vm_image
  config.vm.network 'private_network', ip: $vm_ip
  config.ssh.forward_agent = true
  config.vm.network "forwarded_port", guest: 4321, host: 4321

  config.vm.provision "ansible_local" do |ansible|
    ansible.become = true
    ansible.playbook = "ansible/main.yaml"
    ansible.compatibility_mode = "2.0"
    ansible.extra_vars = {
        box_ip: $vm_ip
    }
    ansible.verbose = false
end

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
