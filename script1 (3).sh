#! /bin/bash

p2=$(python2 --version 2>&1)
p3=$(python3 --version)

num2=2
num3=${p3:7:1}

echo "In your laptop you have a $p2 version and a $p3 version." > test1.txt

if [ $num3 -gt $num2 ]
then
echo -e "Python$num3 is installed on your device and I reccomend using it.\nThat's because it's more provising to use in 2021. " >> test1.txt
else
echo "You use a python$num2. Download python3 for this link - https://www.python.org/downloads/ " >> test1.txt
fi


