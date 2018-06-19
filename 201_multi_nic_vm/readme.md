201 - Create VM with multiple NICs
=== 

# Description

Create VMs with 2 NICs

# Requirements

* Ansible 2.6 beta

# Execution 

* **mainpath**: Path of project directory 

``` bash
	ansible-playbook -i inventory/ -e mainpath="/data/git/azansible/201_multi_nic_vm" playbooks/create_multi_nic_vm.yml
```

