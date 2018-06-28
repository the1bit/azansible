201 - Create VM with multiple NICs
=== 

# Description

Create VMs with 2 NICs

# Azure architecture for this solution

![AzureArchitecture_201](/images/AzureArchitecture_201.png)

Notes:
* Web servers have 2 NICS
* DB server has only 1 NIC (in BackEnd subnet)
* DB server does not have Public IP.

# Requirements

* Ansible 2.7dev
	*Install: 

	``` bash
	sudo pip install git+https://github.com/ansible/ansible.git@devel
	```
* Azure-Cli 2.x

# Execution 

* **mainpath**: Path of project directory 

``` bash
ansible-playbook -i inventory/ -e mainpath="/data/git/azansible/201_multi_nic_vm" playbooks/main.yml
```

# Result
![Result Multi NICs VM 01](/images/multi_nic_vm_01.png)
![Result Multi NICs VM 02](/images/multi_nic_vm_02.png)


# login to vm


``` bash
chmod 600 /data/git/azansible/201_multi_nic_vm/files/azansible_openssh

ssh -i /data/git/azansible/201_multi_nic_vm/files/azansible_openssh localadmin@137.117.190.189
```

