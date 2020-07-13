#!/bin/bash

if [ $# -eq 0 };
then
	echo "Escreva seu nome, por favor!";
else
	echo "Bem-vindo, $1!";
fi