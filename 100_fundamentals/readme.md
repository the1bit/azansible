100 - Fundamentals
=== 

A simple and easy to understand example which can work in a live environment as well. It is a solution which creates the followings:

* Resource Group
* Virtual Network
* FrontEnd subnet for Virtual Network
* Network Security Group for FrontEnd subnet
* Some Network Cards which connect to FrontEnd subnet

1. VNET 

``` bash
	ansible-playbook -i inventory/ playbooks/azure_vnet.yml
```

2. NICs

``` bash
	ansible-playbook -i inventory/ playbooks/azure_network.yml
```