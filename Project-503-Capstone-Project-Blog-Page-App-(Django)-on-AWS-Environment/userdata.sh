#!/bin/bash
apt-get update -y
apt-get install git -y
apt-get install python3 -y
cd /home/ubuntu/
TOKEN="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"
git clone https://$TOKEN@https://github.com/henriano04/My-AWS-Capstone-Project.git
cd /home/ubuntu/My-AWS-Capstone-Project
apt install python3-pip -y
apt-get install python3.7-dev libmysqlclient-dev -y
pip3 install -r requirements.txt
cd /home/ubuntu/My-AWS-Capstone-Project/src
python3 manage.py collectstatic --noinput
python3 manage.py makemigrations
python3 manage.py migrate
python3 manage.py runserver 0.0.0.0:80