#!/bin/bash
sudo su
yum update -y
yum install -y httpd
cd /var/www/html
aws s3 sync s3://kronphe-jupiter-site /var/www/html
unzip jupiter-main.zip
cp -r /var/www/html/jupiter-main/* /var/www/html
rm -rf jupiter-main.zip jupiter-main
systemctl enable httpd
systemctl start httpd
