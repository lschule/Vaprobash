 #!/usr/bin/env bash

echo ">>> Installing crm114 with python"
 
sudo apt-get install crm114


sudo apt-get install build-essential
sudo apt-get install libreadline-gplv2-dev libncursesw5-dev libssl-dev libsqlite3-dev tk-dev libgdbm-dev libc6-dev libbz2-dev


sudo apt-get install python-pip
sudo pip install crm114

sudo apt-get install libapache2-mod-python