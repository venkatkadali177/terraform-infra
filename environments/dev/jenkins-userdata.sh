#!/bin/bash
set -e

exec > >(tee /var/log/user-data.log)
exec 2>&1

echo "Starting Jenkins setup..."

dnf update -y

dnf install -y java-21-amazon-corretto docker git wget awscli

wget -O /etc/yum.repos.d/jenkins.repo \
https://pkg.jenkins.io/redhat-stable/jenkins.repo

rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io-2023.key

dnf makecache

dnf install -y jenkins

systemctl enable docker
systemctl start docker

systemctl enable jenkins
systemctl start jenkins

usermod -aG docker jenkins || true
usermod -aG docker ec2-user || true

echo "Jenkins setup completed successfully"