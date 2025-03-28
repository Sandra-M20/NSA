#!/bin/bash
echo "enter  4 numbers"
read a b c d
sum=$(expr $a+$b+$c+$d|bc)
echo  "sum=$sum"
((prod=a*b*c*d))
echo "product=$prod"
avg=$(expr $sum/4  |  bc -l)
((avg=sum/4))
echo "average=$avg"
