#Update apt

sudo apt -y update
sudo apt -y upgrade
sudo apt install -y mongodb
sudo apt-get install git

#get the latest version of nodejs

curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash -
sudo apt-get install -y nodejs

#cloning all the repos

git clone https://github.com/Nboaram/TeamAPoolProjectUI.git

cd TeamAPoolProjectUI/

git checkout Developer

sudo npm install

yes | sudo npm -g install --save @angular/cli

cd ../

#out of the UI direc

git clone https://github.com/Nboaram/TeamAPoolProjectBackend.git

cd TeamAPoolProjectBackend/

git checkout Developer

sudo npm install

cd ../

#out of the backend dir

sudo cp api.service /etc/systemd/system
sudo cp ng.service /etc/systemd/system

sudo systemctl daemon-reload
sudo systemctl start mongodb
sudo systemctl start ng.service
sudo systemctl start api.service
