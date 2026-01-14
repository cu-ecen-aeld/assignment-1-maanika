#!/bin/bash

if [ ! $# -eq 2 ]; then
	echo "ERROR: invalid number of arguments ($#), expected 2"
	exit 1
fi

writefile="$1"
writestr="$2"
writedir=$(dirname "$writefile")

mkdir -p ${writedir} && touch ${writefile}
if [ ! $? -eq 0 ]; then
	echo "ERROR: failed to create new file, check permisions"
	exit 1
fi

echo ${writestr} > ${writefile}

