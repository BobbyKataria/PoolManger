#update

sudo apt -y update
sudo apt -y upgrade
sudo apt-get install git

#get the latest version of nodejs

curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash -
sudo apt-get install -y nodejs

#cloning all the repos
cd ~
rm -rf TeamAPoolProjectUI
git clone https://github.com/Nboaram/TeamAPoolProjectUI.git

cd TeamAPoolProjectUI/

git checkout Developer

npm install

yes | sudo npm -g install --save @angular/cli

cd ../

sudo cp ng.service /etc/systemd/system

sudo systemctl daemon-reload
sudo systemctl restart ng.service