# Jupiter Site Deployment Script

This repository contains a bash script that simplifies the deployment of the Jupiter website on a CentOS-based server. The script automates the process of updating the system, installing Apache HTTP server (httpd), syncing files from an AWS S3 bucket, and starting the httpd service.

## Prerequisites

Before using this script, ensure you have the following prerequisites:

1. A server running CentOS 7 or later.
2. Appropriate permissions to execute the necessary commands.

## Getting Started

Follow the steps below to get started with the deployment:

1. Clone this repository to your server or download the script file directly.

2. Make the script executable:
  
   chmod +x jupiter_site_deployment.sh

3. Modify the `aws s3 sync` command to replace `s3://kronphe-jupiter-site` with the appropriate S3 bucket URL that contains the website files you want to deploy.

## Usage

Once you've met the prerequisites and made the script executable, you can use it as follows:

1. Open a terminal or SSH into your CentOS server.

2. Navigate to the directory where you have placed the script:
  
   cd /var/www/html

3. Execute the script using sudo (as some commands require root privileges):
 
   sudo ./jupiter_site_deployment.sh

4. The script will start executing the deployment process. It will update the system, install Apache HTTP server, sync the website files from the specified S3 bucket, and configure the server to host the Jupiter site.

## Important Note

- The script assumes that the necessary AWS CLI configurations (access key, secret key, region) are already set up on your server. If not, please set them up before running the script.

- Ensure that you have backups of any existing data in the `/var/www/html` directory, as the script may overwrite the contents during the deployment process.

- This script is specifically designed for CentOS-based servers. Running it on other Linux distributions or environments may cause issues.

## Contributing

If you find any issues with the script or have suggestions for improvements, feel free to open an issue or create a pull request. We welcome your contributions!

