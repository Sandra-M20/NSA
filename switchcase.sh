#!/bin/bash
echo "Enter a number:"
read number
while true;do
echo "Your choices are 1.even/odd  2.Reverse of number 3.Sum of digits 4.Exit"
echo "enter your choice:"
read ch
case $ch in
1)
if [ $((number % 2)) -eq 0 ]; then
    echo "$number is an even number."
else
    echo "$number is an odd number."
fi
;;
2)
rev_num=$(echo $number | rev)
echo "The reverse of the number is: $rev_num"
;;
3)
sum=0
temp=$number
while [ $temp -gt 0 ]; do
    digit=$((temp % 10))
    sum=$((sum + digit))
    temp=$((temp / 10))
done
echo "The sum of the digits is: $sum"
;;
4)
echo "Exit"
break;
;;
*)
echo invalid
;;
esac
done
