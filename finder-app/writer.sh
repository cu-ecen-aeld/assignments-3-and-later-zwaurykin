#!/bin/bash

if [ $# -ne 2 ]
then 
	echo "usage: $0 <writefile> <writestr>"
	exit 1
fi

writefile=$1
writestr=$2

dirpath=$(dirname $writefile)

mkdir -p $dirpath

echo $writestr > $writefile

if [ $? -ne 0 ]
then
	echo "Error: The file $writefile can not be created"
	exit 1
fi

echo "Successfully created the file $writefile with the content $writestr"
	
