#!/bin/bash

div(){
echo $((  $1 / $2 ))
}

if [ $# -lt  2 ];
then
        echo "Insira dois n�meros!";
else
        echo "$1/$2 = `div $1 $2`";
fi
