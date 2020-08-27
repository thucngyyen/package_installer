#!/bin/bash

filename='packages.txt'

sudo apt-get update

while read -r line; do
	sudo apt-get install -y ${line}
done < $filename
