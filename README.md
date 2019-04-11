# bukaspace_infra
bukaspace Infra repository

testapp_IP = 35.240.34.21 testapp_port = 9292 

#startup script for HW 6
gcloud compute instances create reddit-app \
--boot-disk-size=10GB \
--image-family ubuntu-1604-lts \
--image-project=ubuntu-os-cloud \
--machine-type=g1-small \
--tags puma-server \
--restart-on-failure \
--metadata-from-file \
startup-script=startup.sh 

#firewall for HW 6
gcloud compute firewall-rules create default-puma-server\
  --direction=INGRESS \
  --priority=1000 \
  --network=default \
  --action=ALLOW \
  --rules=tcp:9292 \
  --source-ranges=0.0.0.0/0 \
  --target-tags=puma-server




bastion_IP = 35.210.94.15 
someinternalhost_IP = 10.132.0.4

pritunl: https://35.210.94.15.xip.io/
