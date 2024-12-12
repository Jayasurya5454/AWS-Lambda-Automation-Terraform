#  Terraform-Based AWS Lambda Infrastructure and CI/CD Pipeline

## Overview
This repository contains an Infrastructure as Code (IaC) solution developed using Terraform. The solution provisions AWS Lambda functions and sets up a CI/CD pipeline using CircleCI to ensure streamlined deployment and operational efficiency.

## Features
- **Infrastructure as Code (IaC):** Uses Terraform to define and manage infrastructure resources.
- **AWS Lambda:** Automates the creation and configuration of serverless functions.
- **CI/CD Pipeline:** Implements a robust CI/CD pipeline using CircleCI for continuous integration and delivery.

## Prerequisites
1. **Terraform:** Ensure that Terraform is installed on your system. Visit the [Terraform website](https://www.terraform.io/) for installation instructions.
2. **AWS Account:** An AWS account with necessary permissions to create Lambda functions and other resources.
3. **CircleCI Account:** A CircleCI account for configuring the CI/CD pipeline.
4. **CLI Tools:** AWS CLI should be installed and configured with appropriate credentials.

## Setup Instructions
### 1. Clone the Repository
```bash
git clone <repository_url>
cd <repository_directory>
```

### 2. Initialize Terraform
```bash
terraform init
```

### 3. Apply Terraform Configuration
```bash
terraform apply
```
Review the plan and confirm to create the resources.

### 4. Set Up CircleCI
- Add the repository to CircleCI.
- Configure the `.circleci/config.yml` file according to your requirements.

### 5. Deploy and Test
Push your changes to the repository. CircleCI will automatically trigger the CI/CD pipeline to deploy the Lambda functions.
