#!/bin/bash

# Monitoring the free file system disk space
# This script checks the disk usage of the 'sda2' partition and sends an alert email if usage is >= 80%

# Getting disk usage of /dev/sda2, removing the % sign and storing in variable FU
FU=$( df -H | egrep -v "Filesystem|tmpfs" | grep "sda2" | awk '{print $5}' | tr -d % )

# Email address to send alert to
TO="net.goluyadav@gmail.com"

# If disk usage is greater than or equal to 80%, send a warning email
if [[ $FU -ge 80 ]]
then
	echo "Warning, disk space is low!!!! - $FU %" | mail -s "Disk space alert!" $TO
else
	echo "All ok"
fi
