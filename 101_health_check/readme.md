101 - Health Check
=== 

# Description

A tool for check your Linux server availability with a simple SSH login based script execution.


# Execution 

``` bash
	ansible-playbook -i inventory/ -e mainpath="/data/git/azansible/101_health_check" playbooks/health_check.yml
```

