# 🚀 Terraform AWS EC2 Demo

Provision a tiny Ubuntu EC2 instance with a security group allowing SSH.

## Requirements
- Terraform >= 1.6
- AWS CLI configured
- An AWS key pair (e.g., `terraform-demo`)

## Quickstart
```bash
terraform init
terraform fmt -recursive
terraform validate

# Plan (replace with your key name; tighten ssh_cidr to YOUR_IP/32)
terraform plan -var 'key_name=terraform-demo' -var 'ssh_cidr=0.0.0.0/0'

# Apply
terraform apply -auto-approve -var 'key_name=terraform-demo' -var 'ssh_cidr=0.0.0.0/0'

# SSH (Ubuntu AMI default user is 'ubuntu')
ssh -i ~/.ssh/terraform-demo.pem ubuntu@$(terraform output -raw instance_public_ip)

# Destroy to avoid costs
terraform destroy -auto-approve -var 'key_name=terraform-demo'
