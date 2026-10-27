#!/bin/bash

yum update -y

echo "Cluster: ${cluster_name}" > /tmp/cluster.txt

yum install -y amazon-cloudwatch-agent

systemctl enable amazon-cloudwatch-agent
systemctl start amazon-cloudwatch-agent