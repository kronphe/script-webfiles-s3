This script can be used both the on-premises server deployment and AWS EC2 instance deployment via user data:

# Jupiter Site Deployment Script

This repository contains a bash script (script-s3.sh) that simplifies the deployment of the Jupiter website on either an on-premises server or an AWS EC2 instance using user data. The script automates the process of updating the system, installing Apache HTTP server (httpd), syncing files from an AWS S3 bucket, and starting the httpd service.

## Prerequisites

Before using this script, ensure you have the following prerequisites based on your deployment scenario:

### On-Premises Server Deployment

1. A server running CentOS 7 or later.

2. Appropriate permissions to execute the necessary commands with sudo privileges.

### AWS EC2 Instance Deployment

1. An AWS account with appropriate permissions to create and manage EC2 instances.

2. Basic knowledge of launching an EC2 instance using the AWS Management Console and providing user data.

## Getting Started

Follow the steps below to get started with the deployment:

1. Clone this repository to your server or download the script file directly.

2. Make the script executable:
   chmod +x script-s3.sh
   

3. Modify the `aws s3 sync` command to replace `s3://kronphe-jupiter-site` with the appropriate S3 bucket URL that contains the website files you want to deploy.

## Usage for On-Premises Server Deployment

To use this script for deploying the Jupiter website on an on-premises server, follow these steps:

1. Open a terminal or SSH into your CentOS server.

2. Navigate to the directory where you have placed the script:
   cd /var/www/html

3. Execute the script using sudo (as some commands require root privileges):
   sudo ./script-s3.sh

4. The script will start executing the deployment process. It will update the system, install Apache HTTP server, sync the website files from the specified S3 bucket, and configure the server to host the Jupiter site.

## Usage as User Data for AWS EC2 Instance Deployment

To use this script as user data during the launch of an EC2 instance via the AWS Management Console, follow these steps:

1. Log in to your AWS Management Console.

2. Navigate to the EC2 service.

3. Click on the "Launch Instance" button.

4. Choose the Amazon Machine Image (AMI) of your preference. Make sure to select an AMI that is compatible with CentOS-based systems.

5. Select an instance type. For testing purposes, you can choose the "t2.micro" instance type.

6. Configure the instance details as needed.
(attached the IAM role created that allow EC2 instance to download files from S3)


7. In the "User data" section, select "As text" and paste the content of the `jupiter_site_deployment.sh` script.

8. Proceed with the rest of the EC2 instance configuration, including setting up security groups, adding storage, and configuring any other settings required for your use case.

9. Review and launch the instance.

10. Once the instance is launched, the script will automatically execute as user data, updating the system, installing Apache HTTP server, syncing the website files from the specified S3 bucket, and configuring the server to host the Jupiter site.

## Important Notes

- The script assumes that the necessary AWS CLI configurations (access key, secret key, region) are already set up on your server or local machine for EC2 instance deployment. If not, please set them up before running the script as user data.

- Ensure that you have backups of any existing data in the `/var/www/html` directory on the server or EC2 instance, as the script may overwrite the contents during the deployment process.

- This script is specifically designed for CentOS-based servers. Running it on other Linux distributions may cause issues.

## Contributing

If you find any issues with the script or have suggestions for improvements, feel free to open an issue or create a pull request. We welcome your contributions!
