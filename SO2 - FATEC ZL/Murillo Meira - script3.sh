#!/bin/bash

if [ $# -lt 1 -o $# -gt 1 ];
then
        echo "Insira EXATAMENTE 01  número!";
else
        echo "Seu número é $1";
fi

