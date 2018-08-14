#!/bin/bash
#####
# UpdatedAt: 2018.08.14
# Version: 0.0.3
#####

command="\/usr\/bin\/python \/var\/speak_raspi_ip\/speak_ip.py \&"

rm -rf ~/speak_raspi_ip
git clone --depth=1 https://github.com/ma6174/speak_raspi_ip.git ~/speak_raspi_ip
apt-get install -y mpg123
rm -rf /var/speak_raspi_ip/
mv speak_raspi_ip /var/
[`grep "$command" /etc/rc.local | wc -l` -ne 0] || sed -i "s/exit 0$/$command\nexit 0/" /etc/rc.local

echo "+ Install \`Speak IP\` Finished!"
