#!/usr/bin/env bash
sudo apt-get --assume-yes install git
git clone -b monolith https://github.com/express42/reddit.git
mv reddit /opt/
cd /opt/reddit && bundle install
