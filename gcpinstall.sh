
#downloading the cloud shell 

curl https://sdk.cloud.google.com | bash

#installing jq 

sudo apt-get install jq

#for google cloud sdk variables

echo "GCLOUD_CONFIG=$(gcloud config list --format json)" >> ~/.bashrc
echo "GCLOUD_PROJECT=$(echo -n ${GCLOUD_CONFIG} | jq -r '.core.project')" >> ~/.basrc
echo "GCLOUD_REGION=$(echo -n ${GCLOUD_CONFIG} | jq -r '.compute.region')" >> ~/.bashrc
echo "GCLOUD_ZONE=$(echo -n ${GCLOUD_CONFIG} | jq -r '.compute.zone')" >> ~/.bashrc

source ~/.bashrc
