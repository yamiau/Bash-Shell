#!/bin/bash

data=(`date +%d-%m-%y-%H-%M`);
tar -cvzf /tmp/aluno_${data[0]}_${data[1]}_${data[2]}_${data[3]}_${data[4]}.tar.gz /home/aluno;
