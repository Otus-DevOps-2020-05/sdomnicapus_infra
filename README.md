# sdomnicapus_infra
sdomnicapus Infra repository

#Домашнее задание 5
bastion_IP = 84.201.174.236
someinternalhost_IP = 10.130.0.28

#Самостоятельные задания

-способ подключение к `someinternalhost` одной командой
Использовать Jumphost
ssh -J appuser@<bastion_IP> appuser@<someinternalhost_IP>

-подключение к someinternalhost по alias
для подключение по hostname необходимо настроить ssh/config ProxyCommand 
Host someinternalhost 
User appuser 
Port 22 
HostName 10.130.0.28
ProxyJump bastion

-для подключения к vpn скачать cloud-bastion.ovpn
-Подключение валидного сетификата с помощью Lets Encrypt Domain 
https://84-201-174-236.sslip.io/

#Домашнее задание 6
testapp_IP = 84.201.133.137
testapp_port = 9292

#Самостоятельные задания
install_ruby.sh
install_mongodb.sh
deploy.sh

#Дополнительные задания
instance_create.sh
metadata.yml
