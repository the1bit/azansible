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

# Result
![Result Multi NICs VM](/images/multi_nic_vm.png)


# login to vm


``` bash
chmod 700 /data/git/azansible/201_multi_nic_vm/files/azansible.ppk

ssh -i /data/git/azansible/201_multi_nic_vm/files/azansible.ppk localadmin@137.117.190.189
```

