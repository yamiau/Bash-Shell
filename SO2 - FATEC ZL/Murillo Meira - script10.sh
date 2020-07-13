#!/bin/bash

for file in `cd Desktop | ls -a`
do
  echo `file $file`
done