#! /bin/bash


reverse_digit()
{
rev=0
let "num = $1"
while [ $num -gt 0 ]
do
let "rem = $num % 10"
let "rev = $(($rev * 10 + $rem))"
let "num =$num / 10"
done

return $rev
}

echo "enter a number"
read num

reverse_digit $num
echo $rev
