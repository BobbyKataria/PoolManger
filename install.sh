#Update apt

sudo apt update -y

sudo apt-get install git

#get the latest version of nodejs

curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash - 
sudo apt-get install -y nodejs

#cloning all the repos

git clone https://github.com/Nboaram/TeamAPoolProjectBackend.git

cd TeamAPoolProjectBackend/

git checkout Developer

sudo npm install

sudo apt install -y mongodb

sudo cp mongodb.service /etc/systemd/system/
        
sudo systemctl daemon-reload
             
sudo systemctl start mongodb

exit

cd ../ 

git clone https://github.com/Nboaram/TeamAPoolProjectUI.git

cd TeamAPoolProjectUI/

git checkout Developer

sudo npm install -y

yes | sudo npm install -g @angular/cli



