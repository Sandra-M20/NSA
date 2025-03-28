#!/bin/bash
echo "Enter a number:"
read number
if [ $((number % 2)) -eq 0 ]; then
    echo "$number is an even number."
else
    echo "$number is an odd number."
fi
rev_num=$(echo $number | rev)
echo "The reverse of the number is: $rev_num"
sum=0
temp=$number
while [ $temp -gt 0 ]; do
    digit=$((temp % 10))
    sum=$((sum + digit))
    temp=$((temp / 10))
done
echo "The sum of the digits is: $sum"
