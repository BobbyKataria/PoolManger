#creating our front end and back end server

gcloud compute instances create MEAN --image ubuntu-1804-bionic-v20190628 --image-project ubuntu-os-cloud --tags front,back --zone europe-west2-c

#creating our firewall rules
gcloud compute firewall-rules create frontend --allow tcp:4200 --source-ranges=0.0.0.0/0 --target-tags front, back --description="Creating the port for our frontend using 4200"

gcloud compute firewall-rules create backend --allow tcp:8080 --source-ranges=0
.0.0.0/0 --target-tags front,back --description="Creating the port for our frontend using 4200"

#ssh into our vm's

gcloud compute ssh MEAN

#git clone

