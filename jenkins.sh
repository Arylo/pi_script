#!/bin/bash
#####
# UpdatedAt: 2018.08.16
# Version: 0.0.1
#####

echo "+ Install \`Jenkins\` Start!"

apt-get install oracle-java8-jdk -y

wget -q -O - https://jenkins-ci.org/debian/jenkins-ci.org.key | apt-key add -
sh -c 'echo deb http://pkg.jenkins-ci.org/debian binary/ > /etc/apt/sources.list.d/jenkins.list'
apt-get update
apt-get install jenkins -y

echo "++ Initial Admin Password: `cat /var/lib/jenkins/secrets/initialAdminPassword`"

echo "+ Install \`Jenkins\` Finished!"
