azansible
==========
(Azure on Ansible basis)
-----

# Table of content
* [Background](#background)
* [Prerequisites](#prerequisites)
* [Solutions](#solutions)
	* [100 - Fundamentals](#100---fudamentals)
	* [101 - Health check](#101---health-check)

# Background

I would like to provide you here some Ansible based solution for Azure

# Prerequisites

## Install packages for ansible

I use Ansible 2.5.x.

``` bash
# update PIP on your computer
sudo pip install --upgrade pip 

# Install/Update azure 
sudo pip install azure --upgrade 

# Install/Update msrestazure 
sudo pip install msrestazure --upgrade  

# Install/update packaging 
sudo pip install packaging --upgrade 

# Install/Update cryptography 
sudo pip install cryptography --upgrade 

# Install/Update azure module for Ansible 
sudo pip install ansible[azure] --upgrade
```

## Access on Azure for Ansible

Here we create a Service Principal in Azurre and the credential file for Azure access.

### Create Service Principal

1. Login to Azure  (and set the default subscription)

``` bash
az cloud update

az cloud set -n AzureCloud
     
# Login with your account
az login -u <your username>
     
# Set the required subsctiption
az account set --subscription <subscriptionID>
```

2. Create the service principal for automation

``` bash
az ad sp create-for-rbac --name Automation_ResourceManager --query '{"client_id": appId, "secret": password, "tenant": tenant}'
```

* Please write down and store in a secret place the "secret" because you cannot receive again from system anymore.
* Required permission for this SP on subscription: Contributor
* You have to be owner or co-administrator privileges on Azure to be able to create Service Principal

3. Make credential file

When you execute a playbook with Ansible it requires the Azure login data. For this we have to create a file

``` bash
# Create directory
mkdir ~/.azure

# Create the azure file for credential
vim ~/.azure/credentials

[default]
subscription_id=53455...
client_id=7f37...
secret=ft56...
tenant=987d...
```

You are ready to Ansible on Azure.

# Solutions
## 100 - Fudamentals

A simple and easy to understand example which can work in a live environment as well. [Jump there](100_fundamentals)

## 101 - Health check

A tool for check your Linux server availability with a simple script execution on the remote VM.. [Jump there](101_health_check)


