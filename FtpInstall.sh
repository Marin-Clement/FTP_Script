#!/bin/bash

#git clone https://github.com/remi-vidal-michel/referencecfg.git ; sh FtpInstall.sh

# sudo apt update ; sudo apt upgrade ; sudo apt install proftpd ; sudo apt git
cp /etc/proftpd/proftpd.conf /etc/proftpd/proftpd1.conf
cat referencecfg/referencecfg.txt > /etc/proftpd/proftpd23.conf
service proftpd restart
# ip=$(hostname -I | cut -f1 -d' ')
# echo $ip