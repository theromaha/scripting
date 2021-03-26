#! /bin/bash

#uptime
echo "------------------------------------------------------------------------------------------" > test3.txt
uptime=$(uptime -p)
echo "Uptime: $uptime" >> test3.txt
echo "------------------------------------------------------------------------------------------" >> test3.txt

#Current users
us=$(w | head -n 3 | tail -n 1 | awk '{print $1}')
echo -e "Current users: $us" >> test3.txt
echo "------------------------------------------------------------------------------------------" >> test3.txt

#Last log
ll=$(last | head -n 3)
echo -e "Racent logins:\n$ll\n" >> test3.txt
echo "------------------------------------------------------------------------------------------" >> test3.txt

#TOP-10
top=$(ps -eo pid,ppid,cmd,%mem,%cpu --sort=-%mem | head)
echo -e "TOP-10 processes by RAM/CPU usage:\n $top\n" >> test3.txt
echo "------------------------------------------------------------------------------------------" >> test3.txt

#Open TCP/UDP ports
ports=$(sudo lsof -i -P -n | grep LISTEN)
echo -e "Open TCP/UDP ports:\n$ports\n" >> test3.txt
echo "------------------------------------------------------------------------------------------" >> test3.txt

#Virtual Memory usage
vir=$(free -m)
echo -e "Virtual Memory usage:\n$vir\n" >> test3.txt
echo "------------------------------------------------------------------------------------------" >> test3.txt

#Usage of disk space
disk=$(df -h /)
echo -e "Usage of disk space:\n$disk" >> test3.txt
echo "------------------------------------------------------------------------------------------" >> test3.txt

