#!/bin/bash

dnf update -y

dnf install java-21-amazon-corretto -y

dnf install docker git awscli -y

wget -O /etc/yum.repos.d/jenkins.repo \
https://pkg.jenkins.io/redhat-stable/jenkins.repo

rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io-2023.key

dnf install jenkins -y

systemctl enable docker
systemctl start docker

usermod -aG docker jenkins
usermod -aG docker ec2-user

systemctl enable jenkins
systemctl start jenkins