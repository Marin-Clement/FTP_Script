# ./bin/bash
git clone https://github.com/Marin-Clement/FTP_Script.git ; sh FTP_Script/FtpInstall.sh
#Set user to root for commands
echo "Password needed to make changes to your machine"
su /

#Installation package
apt -y install proftpd 
apt-get update ; apt-get upgrade
echo "Installation done"

#Starting server
service proftpd start
echo "Starting the server"
cp /etc/proftpd/proftpd.conf /etc/proftpd/proftpd.conf.backup
echo "A Backup to /etc/proftpd/proftpd.conf.backup has been made"

#Echo server's IP Adress
hostname -I | cut -f1 -d' '
echo "This is the server's IP"

#Enabling Anonymous and FTPS
mkdir -p /etc/proftpd/ssl/
openssl req -x509 -nodes -days 365 -newkey rsa:4096 -out proftpd-rsa.pem -keyout /etc/proftpd/ssl/proftpd-key.pem 
chmod 440 /etc/proftpd/ssl/proftpd-key.pem
cat FTP_Script/reference.txt > /etc/proftpd/proftpd.conf

#Starting operating server
service proftpd restart
echo "User Anonymous is now enabled"
echo "Your FTP is now encrypted (FTPS)"
echo "To remove all changes to your machine please launch Uninstall.sh"