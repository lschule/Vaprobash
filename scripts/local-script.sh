#!/usr/bin/env bash

echo ">>> Installing crm114 with python"
 
sudo apt-get install -qq crm114

sudo apt-get install -qq build-essential
sudo apt-get install -qq libreadline-gplv2-dev libncursesw5-dev libssl-dev libsqlite3-dev tk-dev libgdbm-dev libc6-dev libbz2-dev

sudo apt-get install -qq python-pip
sudo pip install crm114

echo ">>> running ansible setup"

sudo ansible-galaxy install -r /vagrant/requirements.txt
sudo ansible-playbook /vagrant/provisioning/playbook.yml

sudo service apache2 restart
