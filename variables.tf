variable "aws_region" {
  description = "AWS region to deploy in"
  type        = string
  default     = "us-east-1" # change to af-south-1 if you prefer Cape Town
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t2.micro"
}

variable "key_name" {
  description = "Name of an existing AWS key pair for SSH"
  type        = string
}

variable "ssh_cidr" {
  description = "CIDR allowed to SSH (use your IP/32). Temporary default is open."
  type        = string
  default     = "0.0.0.0/0"
}

variable "default_tags" {
  description = "Tags applied to all resources"
  type        = map(string)
  default = {
    Project = "Terraform EC2 Demo"
    Owner   = "your_name"
  }
}
