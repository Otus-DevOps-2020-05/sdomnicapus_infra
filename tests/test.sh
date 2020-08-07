#!/bin/bash

cd /srv/packer/
packer validate -var-file=variables.json.example app.json
packer validate -var-file=variables.json.example db.json

cd /srv/terraform/stage/
terraform validate
tflint
cd /srv/terraform/prod/
terraform validate
tflint

cd /srv/ansible/playbooks
ansible-lint



