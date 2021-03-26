#! /bin/bash

#User name
echo "-------------------------------------" > test2.txt
user_name=$(whoami)
echo "User: $user_name" >> test2.txt
echo "-------------------------------------" >> test2.txt

#Machine name
machine_name=$(uname -n)
echo "Machine name: $machine_name" >> test2.txt
echo "-------------------------------------" >> test2.txt

#OS
os=$(uname -o)
echo "OS: $os" >> test2.txt
echo "-------------------------------------" >> test2.txt

#Arch os
arch_os=$(arch)
echo "Architecture of OS: $arch_os" >> test2.txt
echo "-------------------------------------" >> test2.txt

#OS version
osver=$(lsb_release -d)
echo $osver >> test2.txt
echo "-------------------------------------" >> test2.txt

#Network interfaces
interface=$(ifconfig -s | awk '{print $1}' | head -n3 | tail -n2 | paste -d' ' -s )
echo "Interface: $interface" >> test2.txt
echo "-------------------------------------" >> test2.txt

#IP
ip=$(curl ifconfig.me)
echo "IP: $ip" >> test2.txt
echo "-------------------------------------" >> test2.txt




