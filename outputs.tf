output "instance_public_ip" {
  description = "Public IP of the EC2 instance"
  value       = aws_instance.demo.public_ip
}

output "instance_id" {
  description = "ID of the EC2 instance"
  value       = aws_instance.demo.id
}

output "ami_id" {
  description = "AMI used"
  value       = data.aws_ami.ubuntu.id
}
