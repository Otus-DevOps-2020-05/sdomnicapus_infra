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

#Домашнее задание 7 
Создан шаблон "ubuntu16.json" для создания образа
Подключены скрипты для установки ruby b mongodb
Создан образ.
В процессе сборки образа  добавлена существующа подсеть ("subnet_id": ".....") и таймауты запуска скриптов ("pause_before": "10s")
Создан инстанс на основе образа
Выполнен деплой приложения

#Самостоятельные задания
Выполнена параметризация шаблона (variables.json)

#Дополнительные задания
Создан образ на основе базового
Создан files/puma.service для старта приложения в systemd
В шаблон добавлены дополнителные "provisioners" для копирования файлов и запуска puma.service
Создан скрипт create-reddit-vm.sh для создания инстанса из образа (--create-boot-disk name=disk1,size=10,image-id=.....)
Проверка работы http://84.201.135.8:9292
