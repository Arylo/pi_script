#!/bin/bash
command="\/usr\/bin\/python \/var\/speak_raspi_ip\/speak_ip.py \&"

git clone https://github.com/ma6174/speak_raspi_ip.git ~/speak_raspi_ip
apt-get install -y mpg123
rm -rf /var/speak_raspi_ip/
mv speak_raspi_ip /var/
sed -i "s/exit 0$/$command\nexit 0/" /etc/rc.local
echo "Install \`Speak IP\` Finished!"
