#!/bin/sh

wget -c http://ftp.apnic.net/stats/apnic/delegated-apnic-latest

cat ip_up_header.sh > ip_up.sh
cat delegated-apnic-latest | awk -F '|' '/CN/&&/ipv4/ {print "route add " $4 "/" 32-log($5)/log(2) " ${OLDGW}"}'|cat >> ip_up.sh

cat ip_down_header.sh > ip_down.sh
cat delegated-apnic-latest | awk -F '|' '/CN/&&/ipv4/ {print "route delete " $4 "/" 32-log($5)/log(2) " ${OLDGW}"}'|cat >> ip_down.sh

chmod 0777 ip_up.sh
chmod 0777 ip_down.sh