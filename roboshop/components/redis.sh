#!/bin/bash

source components/common.sh

Print "Install Yum Utils & Download Redis Repos"
yum install epel-release yum-utils http://rpms.remirepo.net/enterprise/remi-release-7.rpm -y &>>$LOG
Status_Check $?

Print "Setup Redis Repos\t\t\t"
yum-config-manager --enable remi &>>$LOG
Status_Check $?

Print "Install Redis\t\t\t\t"
yum install redis -y  &>>$LOG
Status_Check $?

Print "Configure Redis Listen Address\t\t"
if [ -f /etc/redis.conf ]; then
  sed -i -e 's/127.0.0.1/0.0.0.0/' /etc/redis.conf
fi
if [ -f /etc/redis/redis.conf ]; then
  sed -i -e 's/127.0.0.1/0.0.0.0/' /etc/redis/redis.conf
fi
Status_Check $?

Print "Start Redis Service\t\t\t"
systemctl enable redis &>>$LOG && systemctl restart redis &>>$LOG
Status_Check $?
