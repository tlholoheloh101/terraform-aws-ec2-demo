# Security group to allow SSH from your IP
resource "aws_security_group" "ssh_access" {
  name        = "terraform-demo-sg"
  description = "Allow SSH inbound"
  vpc_id      = data.aws_vpc.default.id

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = [var.my_ip]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

# Get default VPC
data "aws_vpc" "default" {
  default = true
}

# EC2 instance
resource "aws_instance" "demo" {
  ami                    = "ami-0c02fb55956c7d316"  # Amazon Linux 2 Free Tier
  instance_type          = "t3.micro"               # Free Tier eligible
  key_name               = var.key_name
  vpc_security_group_ids = [aws_security_group.ssh_access.id]
  associate_public_ip_address = true

  tags = {
    Name = "TerraformDemoInstance"
  }
}



