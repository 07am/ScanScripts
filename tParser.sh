#!/bin/bash
# tParser v1.0
# Utility designed to parse current directory for GNMAP files for open or closed ports.
# tParser.sh
# author 07am [https://github.com/07am]

while true; do
clear
date=$(date)
ro=$(grep -h "open\|closed" *.gnmap)
if [[ $ro == *"open"* || $ro == *"closed"* ]]
then
	for ((i=10; i>=1; i--));do
		printf "\nUpdated $date\n\nNon-Filtered Ports Found:\n\n$ro\n\nChecking again in $i seconds...\n"
		sleep 1
		clear
	done
else
	for ((i=10; i>=1; i--));do
		printf "\nUpdated $date\n\nNo results yet.\n\nChecking again in $i seconds...\n"
		sleep 1
		clear
	done
fi
done

