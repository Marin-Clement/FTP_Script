#!/bin/bash

#git clone https://github.com/remi-vidal-michel/referencecfg.git ; sh FtpInstall.sh

# sudo apt update ; sudo apt upgrade ; sudo apt install proftpd ; sudo apt git
sudo cp /etc/proftpd/proftpd.conf /etc/proftpd/proftpd1.conf
sudo cat referencecfg/referencecfg.txt > /etc/proftpd/proftpd23.conf
sudo service proftpd restart
rm -r referencecfg

# ip=$(hostname -I | cut -f1 -d' ')
# echo $ip