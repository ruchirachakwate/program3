#!/bin/bash -x

declare -A arith
echo "enter number 1"
read a
echo "enter number 2"
read b
echo "enter number 3"
read c

d=$(($a+$b*$c));
e=$(($a*$b+$c));
f=$(($c+$a/$b));
g=$(($a%$b+$c));

echo $d;
echo $e;
echo $f;
echo $g;

arith[e1]=$d
arith[e2]=$e
arith[e3]=$f
arith[e4]=$g
echo ${arith[@]}
echo ${!arith[@]}

ascending=($(printf '%d\n' "${arith[@]}" | sort -n))
echo ${ascending[@]}

decending=($(printf '%d\n' "${arith[@]}" | sort -nr))
echo ${decending[@]}

