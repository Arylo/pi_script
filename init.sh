#!/bin/bash

# Replace Source
## Backup Source List File
cp /etc/apt/sources.list /etc/apt/sources.list.bak
## Relpcae
echo "deb http://mirrors.aliyun.com/raspbian/raspbian/ stretch main non-free contrib\ndeb-src http://mirrors.aliyun.com/raspbian/raspbian/ stretch main non-free contrib" > /etc/apt/sources.list

api-get update
git --version || apt-get install -y git

git clone https://github.com/Arylo/pi_script.git
cd pi_script

# Install Speak IP
chmod +x ./speak_ip.sh
bash ./speak_ip.sh