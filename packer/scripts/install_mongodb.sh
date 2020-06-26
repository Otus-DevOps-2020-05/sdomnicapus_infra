#!/usr/bin/env bash
#wget -qO - https://www.mongodb.org/static/pgp/server-4.2.asc 
wget https://www.mongodb.org/static/pgp/server-4.2.asc
apt-key add server-4.2.asc
echo "deb [ arch=amd64,arm64 ] http://repo.mongodb.org/apt/ubuntu xenial/mongodb-org/4.2 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-4.2.list
apt-get update
apt-get install --assume-yes mongodb-org
systemctl start mongod
systemctl enable mongod
