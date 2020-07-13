#!/bin/bash

name=$1

if [ $# -eq 0 ]
then
        echo "Try again with  your username as an argument! "
else
        echo "$1 belongs in the follwing groups:"
        echo `groups $1`
fi
