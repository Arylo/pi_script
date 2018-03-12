#!/bin/bash
git clone https://github.com/ma6174/speak_raspi_ip.git
apt-get install -y mpg123
rm -rf /var/speak_raspi_ip/
mv speak_raspi_ip /var/
sed 's/exit 0/\/usr\/bin\/python \/var\/speak_raspi_ip\/speak_ip.py \&\nexit 0/g' /etc/rc.local > /etc/rc.local
echo "install finished!"