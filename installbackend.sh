#update apt

sudo apt -y update
sudo apt -y upgrade
sudo apt install -y git
sudo cp api.service /etc/systemd/system
#get node

curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash -
sudo apt-get install -y nodejs

#clone

rm -rf TeamAPoolProjectBackend
git clone https://github.com/Nboaram/TeamAPoolProjectBackend.git

cd TeamAPoolProjectBackend/

git checkout Developer

npm install

cd ..

sudo systemctl daemon-reload
sudo systemctl restart api
