#!/bin/bash

token='1084597321:AAFgOiAvLFYfMknU0TdD910_hcDtt4dtA1s'
# Токен бота отправляющего сообщения
channel="$1"
# ID канала. -1001393948994
subject="$2"
# Тема сообщения
message="$3"
# Сообщение

/usr/bin/curl --request 'POST' --header 'Content-Type: application/json' --data "{\"chat_id\":\"${channel}\",\"text\":\"${subject}\n${message}\"}" "https://api.telegram.org/bot${token}/sendMessage"
