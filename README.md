# Eoutcast_infra
Eoutcast Infra repository
Задание к лекции №5.
Знакомство с облачной инфраструктурой и облачными сервисами

Задание №1
Подключение в одну строку
ssh -i ~/.ssh/appuser -J appuser@51.250.9.23 appuser@10.128.0.31
Получаем возможность доступа к другим серверам в локальной сети организации, которые расположены за NAT, для этого нужно применить флаг -J в командной строке.

Задание №2
Подключение с использованием алиаса
ssh someinternalhost

Конфигурация ssh
Для подключения к внутренним ресурсам можно создать алиас в конфигурации ssh. Добавить файл config в папку C:\Users\username\.ssh\

# Host Bastion Host
Host bastion
    Hostname 51.250.67.207
    User appuser

# Host someinternalhost
host someinternalhost
    Hostname 10.128.0.31
    User appuser
    ProxyJump bastion

Задание №3.
Доступ к админке Pritunl: https://51.250.67.207.sslip.io/ - используется сертификат Let's Encrypt.
Administrator password:
  username: "pritunl"
  password: "94685530"

bastion_IP = 51.250.67.207
someinternalhost_IP = 10.128.0.31
