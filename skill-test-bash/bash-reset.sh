#! /bin/bash
# simple script for resetting configs

echo "[ Bakmie's simple bash for resetting configuration ]"
echo 
# begin variable configuration
NEWHOSTNAME=netlab-skill-1; export NEWHOSTNAME;

echo $NEWHOSTNAME > /etc/hostname
hostname $NEWHOSTNAME
echo 
echo "[ Setting DNS resolver using Google DNS ]"
echo "nameserver 8.8.8.8" > /etc/resolv.conf
echo 
echo "[ Showing IP configuration ]"
ifconfig | grep "inet"
cat /etc/network/interfaces | grep address
echo 
echo "[ Removing installed packages ]"
apt purge vsftpd -y
apt purge proftpd -y
apt purge apache2 -y
apt purge nginx -y
echo 
echo "[ Checking active ports ]"
echo
echo "[ SSH ]"
netstat -npl | grep 22
echo
echo "[ Clearing latest bash history ]"
history -c
rm /root/.bash_history
rm /home/netlab/.bash_history
