### Ansible

## STEPS
1: Create required files

   ansible.cfg -this states our inventory location
   Vagrantfile
   hosts -this is our inventory that has the defined servers
   playbook.yml - this has our main play
   vars.yml - we define our variables in this file and import them into playbook.yml
2: Initialize roles for abstraction purposes
    [ansible-galaxy init <roleName>]
    We will use 3 roles in this case and add them to a role folder

       git - Installs git
       docker -Installs dependencies, docker and docker-compose
       docker-compose -Starts our docker compose
3: Run the playbook through vagrant provision
    vagrant up
    vagrant provision
   access the app through the browser http://localhost:3000 . forwarded ports added in Vagrantfile

     config.vm.network "forwarded_port", guest: 3000, host: 3000, protocol: "tcp"
    config.vm.network "forwarded_port", guest: 5000, host: 5000, protocol: "tcp"


