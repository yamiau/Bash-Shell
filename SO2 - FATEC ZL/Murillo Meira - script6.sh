#!/bin/bash

ra=(1110 48 182 20 24);

echo $(( (( (( (( (( (( --ra[0] )) + (( ++ra[1] )) )) - ra[2] )) / ra[3] )) * ra[4] )) ** 2 ));

let "soma =  --ra[0] + ++ra[1]";
let "sub = soma - ra[2]";
let "div = sub / ra[3]";
let "mult = div * ra[4]";
let "pot = mult ** 2";
echo $pot;