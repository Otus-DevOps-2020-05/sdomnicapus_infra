#!/bin/bash

packer validate -var-file=packer/variables.json.example packer/app.json
packer validate -var-file=packer/variables.json.example packer/db.json

cd /srv/terraform/stage/
terraform init -backend=false
terraform validate
tflint
cd /srv/terraform/prod/
terraform init -backend=false
terraform validate
tflint

cd /srv/ansible
ansible-lint playbooks/site.yml --exclude=roles/jdauphant.nginx



