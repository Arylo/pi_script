#!/bin/bash
#####
# UpdatedAt: 2018.08.14
# Version: 0.0.3
#####

# Replace Source
## Backup Source List File
cp -f /etc/apt/sources.list /etc/apt/sources.list.bak
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

sed -i "s/^[^#]/# &/g" /etc/apt/sources.list
echo "deb "$url" "$version" main non-free contrib" > /etc/apt/sources.list.d/ali.list
echo "deb-src "$url" "$version" main non-free contrib" >> /etc/apt/sources.list.d/ali.list
## endregion Relpcae

# Install Git
apt-get update
git --version || apt-get -y install git

# Clone Scripts
git clone --depth=1 https://github.com/Arylo/pi_script.git /tmp/pi_script
cd /tmp/pi_script

# Install
bash ./install.sh