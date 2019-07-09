#Update apt

sudo apt update -y

sudo apt-get install git

#get the latest version of nodejs

curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash -
sudo apt-get install -y nodejs

#cloning all the repos

git clone https://github.com/Nboaram/TeamAPoolProjectUI.git

cd TeamAPoolProjectUI/

git checkout Developer

yes | sudo npm install

cd ../

#out of the UI direc

git clone https://github.com/Nboaram/TeamAPoolProjectBackend.git

cd TeamAPoolProjectBackend/

git checkout Developer

sudo npm install

sudo apt install -y mongodb

cd ../

#out of the backend dir

sudo cp mongodb.service /etc/systemd/system/

sudo systemctl daemon-reload

yes | sudo npm install -g @angular/cli

ng serve --host 0.0.0.0

