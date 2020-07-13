#!/bin/bash

for user in `who | cut -d " "  -f1 | sort`
do
  echo "User " $user "belongs to: "
  echo `groups $user`
done