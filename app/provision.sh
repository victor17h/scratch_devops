#!/bin/bash

#install node
sudo apt-get install nodejs -y

#install nodejs needs
sudo apt-get install python-software-properties

#Uses custom built setup program provided by node
curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash -

#re install node
sudo apt-get install nodejs -y
sudo npm install

#process manger that will help manage the application
sudo npm install pm2 -g

