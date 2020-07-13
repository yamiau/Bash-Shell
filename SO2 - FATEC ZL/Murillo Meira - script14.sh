#!/bin/bash

user=`whoami`;


echo "Compactando a pasta $user ...";



tar -zcvf /tmp/aluno.tar.gz /home/aluno;

