#!/usr/bin/env bash
cd ~
sudo apt --assume-yes install git
git clone -b monolith https://github.com/express42/reddit.git
cd reddit && bundle install
puma -d
