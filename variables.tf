variable "key_name" {
  description = "Name of an existing AWS key pair for SSH"
  default     = "terraform_demo_key"  # Replace with your key pair name
}

variable "my_ip" {
  description = "Your public IP for SSH access"
  default     = "156.155.13.55/32"  # Replace with the output of `curl ifconfig.me`
}
