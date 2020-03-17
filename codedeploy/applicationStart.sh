#!/bin/bash
echo "configure cloudwatch agent"
sudo /opt/aws/amazon-cloudwatch-agent/bin/amazon-cloudwatch-agent-ctl \
    -a fetch-config \
    -m ec2 \
    -c file:/home/ubuntu/cloudwatch-config.json \
    -s
echo "cloudWatch configured"
sudo systemctl start tomcat.service &&
sudo chmod -R 755 /opt/tomcat8/appLogs

echo "tomcat is now started"