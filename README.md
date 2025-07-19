Folder Structure

aws-network-firewall-terraform/
├── main.tf
├── variables.tf
├── outputs.tf
├── firewall_rules.tf
├── vpc.tf
├── nat_gateway.tf
├── network_firewall.tf
├── terraform.tfvars
└── README.md


🛠️ Prerequisites
Make sure the following are installed and configured:

Terraform (v1.0 or above)
👉 Download Terraform

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

