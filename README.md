# AWS Modular EC2 Infrastructure with Terraform

This repository contains a modular Terraform configuration to deploy a standard compute infrastructure on AWS. The project is designed for reusability and clean separation of concerns.

## 🏗 Architecture Overview

The project provisions the following AWS resources:
* **EC2 Instance**: A virtual server in the AWS cloud.
* **Security Group**: Firewall rules to control inbound and outbound traffic.
* **Elastic IP (EIP)**: A static IPv4 address associated with the EC2 instance for persistent access.

## 🚀 Getting Started

### Prerequisites
* [Terraform](https://terraform.io) installed (v1.0+)
* [AWS CLI](https://amazon.com) configured with appropriate credentials
* An active AWS Account

### Usage

1. **Initialize Terraform:**
   This will download the required providers and initialize the S3 backend.
   ```bash
   terraform init
   ```

2. **Plan the infrastructure:**
   Review the resources that will be created.
   ```bash
   terraform plan
   ```

3. **Apply changes:**
   Deploy the infrastructure to your AWS account.
   ```bash
   terraform apply
   ```

## 🔐 Security Note
* The **S3 Backend** is used to store the state file securely.
* Ensure your `terraform.tfvars` is never committed to Version Control.
* Modify the Security Group rules in `modules/sg` to restrict access to your specific IP address.

## 🧹 Cleanup
To avoid ongoing charges, destroy the resources when you're done:
```bash
terraform destroy
```
-----

## ⭐️ Star

Don't hesitate to give a star, it will gives me a motivation for my projects and my progress.