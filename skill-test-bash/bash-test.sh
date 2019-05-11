#! /bin/bash
# simple script for scoring by bakmie

echo "[ Bakmie's simple bash for checking ]"
echo 
echo "[ Checking the created file ]"
cat meong.txt
echo 
echo Hostname is $HOSTNAME
echo 
echo "[ Checking DNS resolver ]"
cat /etc/resolv.conf | grep nameserver
cat /etc/network/interfaces | grep dns-nameservers
echo 
echo "[ Showing IP configuration ]"
ifconfig | grep "inet"
cat /etc/network/interfaces | grep address
echo 
echo "[ Checking installed packages necessary for the test ]"
apt list --installed | grep apache2
apt list --installed | grep ftpd
apt list --installed | grep nginx
echo 
echo "[ Checking active ports ]"
echo
echo "[ HTTP ]"
netstat -npl | grep 80
echo 
echo "[ FTP ]"
netstat -npl | grep 21
echo
echo "[ SSH ]"
netstat -npl | grep 22
