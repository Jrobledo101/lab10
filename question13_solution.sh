#!/bin/bash

# check error
error () {
   echo "ERROR: $1"
   exit 1
}

#md5 checksum
get_md5sum() {
    cat $1 | md5sum | head -c 32
}

file=$1
hash=$2

# Checking input
if [ -z "$file" ]; then
    error "Please enter a file in 1st parameter"
fi

if [ -z "$hash" ]; then
    error "Please enter a md5sum in 2nd parameter"
fi

# validating
if [ ! -f $file ];
then
    error "File doesn't exist"
elif [ "$(get_md5sum $file)" = "$hash" ]; then
    echo "Success: $file matches provided md5sum"
else
    error "Fail to match the file and md5sum"
fi
