#!/bin/bash

nome=($1 $2 $3)

if [ $# -lt 2 -o $# -gt 3 ];
then
        echo "Insira 2 ou 3 nomes!";
else
        if [ $# -eq 3 ];
        then
                echo ${nome[2]} ${nome[1]} ${nome[0]};
        else
                if [ $# -eq 2 ];
                then
                        echo ${nome[1]} ${nome[0]};
                fi;
        fi;
fi;
