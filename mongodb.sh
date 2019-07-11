#update apt

sudo apt -y update
sudo apt -y upgrade
sudo apt install -y mongodb git

#booting 

sudo cp mongodb.service /etc/systemd/system/

sudo systemctl daemon-reload
sudo systemctl start mongodb

