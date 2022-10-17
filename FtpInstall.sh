#!/bin/bash

#git clone https://github.com/Marin-Clement/FTP_Script.git ; sh Ftp_Script/FtpInstall.sh

apt update ; apt upgrade ; apt install proftpd ;
cp /etc/proftpd/proftpd.conf /etc/proftpd/proftpd.conf.back
cat FTP_Script/reference.txt > /etc/proftpd/proftpd.conf
service proftpd restart
# ip=$(hostname -I | cut -f1 -d' ')
# echo $ip