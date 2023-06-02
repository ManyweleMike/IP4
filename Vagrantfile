Vagrant.configure("2") do |config|

  # config.vm.define "ansible-controller" do |controller|
  #   controller.vm.hostname = "controller"
  # end

  config.vm.box = "geerlingguy/ubuntu2004"

  # Create a forwarded port mapping which allows access to a specific port
  config.vm.network "forwarded_port", guest:3000, host: 3000, protocol: "tcp"
  config.vm.network "forwarded_port", guest:5000, host: 5000, protocol: "tcp"

  config.vm.network "private_network", ip: "192.168.56.10"

  config.ssh.insert_key = false

  config.vm.provider "virtualbox" do |vb|
    # Customize the amount of memory on the VM:
    vb.memory = "2048"
  end

  config.vm.provision "ansible" do |ansible|
    ansible.playbook = "playbook.yml"
  end

end
