201 - Create VM with multiple NICs
=== 

# Description

Create VMs with 2 NICs

# Requirements

* Ansible 2.5.5 or higher
* Azure-Cli 2.x

# Execution 

* **mainpath**: Path of project directory 

``` bash
ansible-playbook -i inventory/ -e mainpath="/data/git/azansible/201_multi_nic_vm" playbooks/main.yml
```

# Result
![Result Multi NICs VM](/images/multi_nic_vm.PNG)


# login to vm


``` bash
chmod 600 /data/git/azansible/201_multi_nic_vm/files/azansible_openssh

ssh -i /data/git/azansible/201_multi_nic_vm/files/azansible_openssh localadmin@137.117.190.189
```

