#!/bin/bash

for arquivo in `pwd | ls -a`
do
  if [ ${#arquivo} -lt 10 ]; then
    echo $arquivo "(" ${#arquivo} " caracter(es))"
  fi
done