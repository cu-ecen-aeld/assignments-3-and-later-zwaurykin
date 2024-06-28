#!/bin/sh

if [ $# -ne 2 ]
then
	echo "usage: $0 <filedir> <serachstr>"
	exit 1
fi

filedir=$1
searchstr=$2

if [ ! -d $filedir ]
then
	echo "$filedir does not does not represent a directory on the filesystem"
	exit 1
fi

num_files=$(find "$filedir" -type f |wc -l)
match_count=$(grep -R "$searchstr" "$filedir" | wc -l)
echo "The number of files are $num_files and the number of matching lines are $match_count"
