#! /bin/bash

p2=$(python2 --version 2>&1)
p3=$(python3 --version)
echo $p3 > vers3.txt

num2=2
num3=$(cut -c 8 vers3.txt)

echo "In your laptop you have a $p2 version and a $p3 version."

if [ $num3 -gt $num2 ]
then
echo "Python$num3 is installed on your device and I reccomend using it. That's because it's more provising to use in 2021. "
else
echo "You use a python$num2. Download python3 for this link - https://www.python.org/downloads/ "
fi


