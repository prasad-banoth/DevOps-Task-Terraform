This project sets up a secure and scalable AWS infrastructure using Terraform, including:

A VPC across 3 Availability Zones (AZs)

Public & Private subnets

Internet and NAT Gateway setup

AWS Network Firewall with stateless and stateful rules


📁 Project Structure

├── README.md                  # Documentation
├── provider.tf                # AWS Provider configuration
├── variables.tf               # Input variables
├── vpc.tf                     # VPC and Internet Gateway
├── subnets.tf                 # Public and private subnets
├── nat_gateway.tf             # NAT Gateway setup
├── route_tabels.tf            # Route tables for subnets
├── network_firewall.tf        # Network Firewall rules and deployment
├── output.tf                  # Outputs like VPC ID, firewall name
├── terraform.tfstate          # Terraform state file (auto-generated)



🛠️ Prerequisites
Make sure the following are installed and configured:

Terraform (v1.0 or above)
👉 Download Terraform  : https://developer.hashicorp.com/terraform/install#windows

AWS CLI
👉 Install AWS CLI

AWS credentials are configured using:
#aws configure
You'll need:

#AWS Access Key
#AWS Secret Key
#Region


# Write all the requirement terraform files and apply the commands 

✅ Terraform Commands & Explanation
Command	Purpose
terraform init	Initializes Terraform, downloads provider plugins
terraform plan	Previews the resources Terraform will create, change, or destroy
terraform apply	Applies the changes required to reach the desired state
terraform destroy	Destroys all resources created by Terraform
terraform fmt	Formats your Terraform code for readability
terraform validate	Validates that your code is syntactically valid and internally consistent

