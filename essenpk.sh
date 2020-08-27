#####################################################################
# Filename: esenpk.sh 
# Author: Thuc Nguyen
# File description: this is the main driver of the program
#                   that reads through packages.txt line by
#                   line and calls install command each.
#####################################################################

#!/bin/bash

filename='packages.txt'

sudo apt-get update 
sudo apt-get upgrade -y

while read -r line; do
	sudo apt-get install -y ${line}
done < $filename
