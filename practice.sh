#! /bin/bash


is_even()
{
let "var= $1 % 2"
if [ $var -eq 0 ]
then
echo "number is even"
else
echo "number is not even"
fi
}

echo "enter a number"
read num
is_even $num
