#!/bin/bash
healthResult=0

# Check uptime as health check probe
getuptime=$(uptime | cut -d " " -f 4,5,6)
if [[ $? == 0  ]]; then healthResult=$((healthResult + 0)); else healthResult=$((healthResult + 1)); fi


### Comment: You can define any other probe on this way

# Get result result
if [[ $healthResult == 0 ]]; then
	echo "$getuptime OK"
else
	echo "ERROR"
fi