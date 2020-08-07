#!/bin/bash
HOMEWORK=/srv/Otus-DevOps-2020-05/sdomnicapus_infra

#Packer tests
packer validate -var-file $HOMEWORK/packer/variables.json.example packer/db.json
packer validate -var-file $HOMEWORK/packer/variables.json.example packer/app.json

#Terraform tests
cd $HOMEWORK/terraform/stage
terraform init && terraform validate && tflint --module --var-file terraform.tfvars.example
cd $HOMEWORK/terraform/prod
terraform init && terraform validate && tflint --module --var-file terraform.tfvars.example

#Ansible test
cd $HOMEWORK/ansible/playbooks
for playbook in ./*.yml; do
    ansible-lint -v --exclude=roles/jdauphant.nginx $playbook
done
