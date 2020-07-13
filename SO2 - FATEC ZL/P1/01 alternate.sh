#!/bin/bash

echo "Type your username:"

read user
groups=`groups $user | cut -d ":" -f 2`

echo  "Your groups, $user: $groups"
