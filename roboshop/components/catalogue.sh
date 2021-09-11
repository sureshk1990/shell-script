#!/bin/bash 

source components/common.sh

Print "Installing NodeJS"
yum install nodejs make gcc-c++ -y &>>$LOG 
Status_Check $? 

Print "Adding RoboShop User"
id roboshop &>>$LOG 
if [ $? -eq 0 ]; then 
  echo "User already there, So Skipping" &>>$LOG 
else 
  useradd roboshop &>>$LOG 
fi 
Status_Check $? 

Print "Downloading Catalogue Content"
curl -s -L -o /tmp/catalogue.zip "https://github.com/roboshop-devops-project/catalogue/archive/main.zip" &>>$LOG 
Status_Check $? 

Print "Extracting Catalogue"
cd /home/roboshop
rm -rf catalogue && unzip -o /tmp/catalogue.zip &>>$LOG && mv catalogue-main catalogue
Status_Check $?

Print "Download NodeJS Dependencies"
cd /home/roboshop/catalogue
npm install --unsafe-perm &>>$LOG 
Status_Check $? 

chown roboshop:roboshop -R /home/roboshop 

Print "Update SystemD Service"
sed -i -e 's/MONGO_DNSNAME/mongodb.roboshop.internal/' /home/roboshop/catalogue/systemd.service
Status_Check $?

Print "Setup SystemD Service"
mv /home/roboshop/catalogue/systemd.service /etc/systemd/system/catalogue.service && systemctl daemon-reload && systemctl restart catalogue &>>$LOG && systemctl enable catalogue &>>$LOG
Status_Check $?
