creating our front end and back end server

gcloud compute instances create meanvm --image ubuntu-1804-bionic-v20190628 --image-project ubuntu-os-cloud --tags front --zone europe-west2-c

creating our firewall rules
gcloud compute firewall-rules create frontend --allow tcp:4200 --target-tags front --description="Creating the port for our frontend using 4200"

gcloud compute firewall-rules create backend --allow tcp:8080 --target-tags front --description="Creating the port for our backend using 8080"

run commands through ssh in our vm

gcloud compute ssh meanvm --command "git clone https://github.com/BobbyKataria/poolappScript.git"

gcloud compute ssh meanvm --command "cd poolappScript && ./install.sh"

gcloud compute ssh meanvm --command "./install.sh"






