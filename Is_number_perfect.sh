#! /bin/bash


is_perfact()
{

sum=0
n=1
while [ $n -lt $1 ]
do
let "var= $1 % $n"
if [ $var -eq 0 ]
then
let "sum= $sum + $n"
fi
let "n= $n + 1"
done

if [ $sum -eq $1 ]
then
echo "number is perfact"
else
echo "number is not perfact"
fi

}

echo "enter a number"
read num
is_perfact $num

