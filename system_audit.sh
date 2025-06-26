#!/bin/bash
mkdir -p logs #logs directory




echo "Hostname: $(hostname)"
echo""


echo "uptime:"
uptime
echo""


echo " cpu info:"
lscpu | grep -E 'socket|core'  #cpu info
echo""

echo "Memory Info:"
free -h
echo""

echo " os Version:"
cat /etc/os-release
echo""



echo "Disk Usage Info:"
df -h
echo""



echo "Logged In Users "
who
echo""


echo "Ip Address:"
ifconfig     #or ip a 
echo""



echo " Running Processes: "
top  #htop #or we have to install it  (htop) show info in color full way
echo""


echo "Dns server"
grep "nameserver" /etc/resolv.conf
echo ""



echo "Default Gateway"
ip route | grep  default | awk '{print $3}'
echo""

echo " Open Ports"
ss -tuln
echo ""

















  
