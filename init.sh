#!/bin/bash

# Replace Source
## Backup Source List File
cp /etc/apt/sources.list /etc/apt/sources.list.bak
## region Relpcae
version=stretch
url=http://mirrors.aliyun.com/raspbian/raspbian/

for ver in stretch wheezy jessie ;
do
    num=`grep "$ver" /etc/apt/sources.list | wc -l`
    if [ $num -ne 0 ]
    then
        version=$ver
    fi
done

echo "deb "$url" "$version" main non-free contrib" > /etc/apt/sources.list
echo "deb-src "$url" "$version" main non-free contrib" >> /etc/apt/sources.list
## endregion Relpcae

# Install Git
apt-get update
git --version || apt-get -y install git

# Clone Scripts
git clone https://github.com/Arylo/pi_script.git
cd pi_script

# Install Speak IP
chmod +x ./speak_ip.sh
bash ./speak_ip.sh