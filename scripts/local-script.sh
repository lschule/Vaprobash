#!/usr/bin/env bash

echo ">>> Installing crm114 with python"
 
sudo apt-get install crm114

sudo apt-get install build-essential
sudo apt-get install libreadline-gplv2-dev libncursesw5-dev libssl-dev libsqlite3-dev tk-dev libgdbm-dev libc6-dev libbz2-dev

sudo apt-get install python-pip
sudo pip install crm114

echo ">>> running ansible setup"

sudo ansible-galaxy install -r requirements.txt
sudo ansible-playbook provisioning/playbook.yml

sudo service apache2 restart
