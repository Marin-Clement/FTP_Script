#!/bin/bash

#git clone https://github.com/remi-vidal-michel/referencecfg.git ; sh Ftp_Script/FtpInstall.sh

sudo apt update ; sudo apt upgrade ; sudo apt install proftpd ;
cp /etc/proftpd/proftpd.conf /etc/proftpd/proftpd.conf.back
cat Ftp_Script/reference > /etc/proftpd/proftpd.conf
service proftpd restart
# ip=$(hostname -I | cut -f1 -d' ')
# echo $ip