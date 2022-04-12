#!/bin/bash
echo "deb http://repo.mongodb.org/apt/ubuntu xenial/mongodb-org/3.4 multiverse"
echo "deb http://repo.pritunl.com/stable/apt bionic main" > /etc/apt/sources.lis
apt-key adv --keyserver hkp://keyserver.ubuntu.com --recv 0C49F3730359A145185859
apt-key adv --keyserver hkp://keyserver.ubuntu.com --recv 7568D9BB55FF9E5287D586
apt-get --assume-yes update
apt-get --assume-yes upgrade
apt-get --assume-yes install pritunl mongodb-org
systemctl start pritunl mongod
systemctl enable pritunl mongod
