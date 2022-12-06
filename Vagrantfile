# -*- mode: ruby -*-
# vi: set ft=ruby :

VIRTUAL_HOST_PRIVATE_IP_ADDRESS = "192.168.58.85"
CPU_CORES_COUNT = "8"
MEMORY_COUNT = "8192"

# create machines config
Vagrant.configure(2) do |config|
    config.vm.box = "bento/ubuntu-14.04"
    config.vm.provider "virtualbox" do |v|
    config.vm.synced_folder ".", "/mnt", type: "virtualbox"
        # for connect with SSH on both machines with no password
        id_rsa_pub = File.read("#{Dir.home}/.ssh/id_rsa.pub")
        config.vm.provision "copy ssh public key", type: "shell",
        inline: "echo \"#{id_rsa_pub}\" >> /home/vagrant/.ssh/authorized_keys"
    end

  # master node config
    config.vm.define 'ubuntu' do |ubuntu|
        ubuntu.vm.network :private_network, 
        ip: VIRTUAL_HOST_PRIVATE_IP_ADDRESS
        ubuntu.vm.hostname = "ubunut-yatank"
        ubuntu.vm.provision "shell",
        privileged: true, path: "setup.sh"
        ubuntu.vm.provider "virtualbox" do |v|
            v.name = "ubunut-yatank"
            v.memory = MEMORY_COUNT
            v.cpus = CPU_CORES_COUNT
        end
    end

end
