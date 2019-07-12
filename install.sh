#Update apt

sudo apt -y update
sudo apt -y upgrade
sudo apt install -y mongodb git

#get the latest version of nodejs

curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash -
sudo apt-get install -y nodejs

#cloning all the repos
rm -rf TeamAPoolProjectUI

git clone https://github.com/Nboaram/TeamAPoolProjectUI.git

cd TeamAPoolProjectUI/

git checkout Developer

npm install

sudo NG_CLI_ANALYTICS=ci npm install -g @angular/cli

cd ../

#out of the UI direc

rm -rf TeamAPoolProjectBackend
git clone https://github.com/Nboaram/TeamAPoolProjectBackend.git

cd TeamAPoolProjectBackend/

git checkout Developer

npm install

cd ../ 

#out of the backend dir
for service in api ng mongodb; do
	sudo cp ${service}.service /etc/systemd/system/
done

sudo systemctl daemon-reload
sudo systemctl start mongodb
sudo systemctl restart ng.service
sudo systemctl restart api.service
