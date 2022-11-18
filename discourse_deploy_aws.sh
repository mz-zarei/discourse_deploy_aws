#!/bin/bash

## run this file on a launched EC2 instance with min 20gb memory
## you may need to make the file executalble be running 
## chmod u+x ./discourse_deploy_aws.sh

## step 1 - install update packages
sudo apt update
sudo apt upgrade -y

## step 2 - Install Docker
wget -qO- https://get.docker.com/ | sh

## step 4 - make a new directory for discourse image files
sudo mkdir /var/discourse

## step 5 - clone discourse docker images in the new directory
sudo git clone https://github.com/discourse/discourse_docker.git /var/discourse

## step 5 - change directory to discourse folder and run setup tool
cd /var/discourse
sudo ./discourse-setup

## Answer the prompted questions with your hostname and SMTP details
## run "./launcher rebuild app" the settings in app.yml has changed



