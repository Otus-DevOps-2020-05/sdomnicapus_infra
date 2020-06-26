yc compute instance create \
  --name reddit-app \
  --hostname reddit-app \
  --zone ru-central1-a \
  --create-boot-disk name=disk1,size=10,image-id=fd82u6n3lnfegh3cs1oo \
  --network-interface subnet-name=default-ru-central1-a,nat-ip-version=ipv4 \
  --metadata serial-port-enable=1 \
  --ssh-key ~/.ssh/appuser.pub
