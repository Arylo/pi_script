#!/bin/bash
#####
# UpdatedAt: 2018.08.14
# Version: 0.0.1
#####

version=stretch
url=http://mirrors.aliyun.com/raspbian/raspbian/

## Backup Source List File
cp -f /etc/apt/sources.list /etc/apt/sources.list.bak

for ver in stretch wheezy jessie ;
do
    num=`grep "$ver" /etc/apt/sources.list | wc -l`
    if [ $num -ne 0 ]
    then
        version=$ver
    fi
done

# Cancel Old Source
sed -i "s/^[^#]/# &/g" /etc/apt/sources.list
# Add Ali Source
echo "deb "$url" "$version" main non-free contrib" > /etc/apt/sources.list.d/ali.list
echo "deb-src "$url" "$version" main non-free contrib" >> /etc/apt/sources.list.d/ali.list

echo "Replace \`Ali Soucre\` Finished!"
