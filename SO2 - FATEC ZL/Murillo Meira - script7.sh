#!/bin/bash

numerico(){
  num='^[0-9]+$'
  if [[ $ra =~ $num ]]; then 
    echo `paridade $ra`
  else 
    echo "Esse script só funciona com números inteiros!"
  fi
}

paridade(){
  let "div = ra % 2"
  if [ $div -eq 0 ]; then 
    echo "O RA inserido é par!"
  else 
    echo "O RA inserido não é par!"
  fi
}

if [ $# != 1 ]; then
  echo "Insira seu RA e somente seu RA!"
else
  ra=$1
  numerico $ra
fi
