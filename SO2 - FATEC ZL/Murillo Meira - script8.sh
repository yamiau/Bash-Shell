#!/bin/bash

total=0

for arquivo in `pwd | ls -a`
do
  if [[ $arquivo == *".sh"* ]]; then
     (( total++ ))
     echo $arquivo "encontrado"
  fi
done

if [ $total -lt 1 ]; then
  echo "Nenhum arquivo .sh encontrado!"
fi