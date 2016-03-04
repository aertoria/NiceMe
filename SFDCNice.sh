#!/bin/bash
# _   _  _____  _____  _____      ___  ___ _____ 
#| \ | ||_   _|/  __ \|  ___|     |  \/  ||  ___|
#|  \| |  | |  | /  \/| |__       | .  . || |__  
#| . ` |  | |  | |    |  __|      | |\/| ||  __| 
#| |\  | _| |_ | \__/\| |___      | |  | || |___ 
#\_| \_/ \___/  \____/\____/      \_|  |_/\____/ 
# 
#This script scan the process id for all SFDC installed company like crash plan of firewalll
#and set them into low priority


echo 'Scan process id for all SFDC installed software'
for processname in {'CrashPlanService','BESAgent','BESClientUI','ARDAgent'}
do
	echo $processname
	for pid in `ps -ef|grep $processname|awk '{print $2}'`
	do
		echo $pid 'Requesting the priority change for this process'
		renice 19 $pid
	done
done

echo '\n\nAll finished'