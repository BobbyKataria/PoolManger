#Update apt

sudo apt update -y

sudo apt-get install npm

#get the latest version of nodejs

curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash - 
sudo apt-get install -y nodejs

#installing angular

sudo npm install -y -g @angular/cli

#installing mongodb

sudo apt install -y mongodb

#cloning all the repos

git clone https://github.com/Nboaram/TeamAPoolProjectBackend.git

cd TeamAPoolProjectBackend/

git checkout Developer

cd ../

git clone https://github.com/Nboaram/TeamAPoolProjectUI.git

cd TeamAPoolProjectUI

git checkout Developer

#installing all dependencies

npm install

cd ../

cd TeamAPoolProjectBackend/

npm install

cd ../ 

mv mongodb.service /etc/systemd/system/

sudo systemctl daemon-reload

sudo systemctl start mongodb






