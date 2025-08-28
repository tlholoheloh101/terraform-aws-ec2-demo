output "instance_id" {
  description = "The ID of the EC2 instance"
  value       = aws_instance.demo.id
}

output "public_ip" {
  description = "Public IP of the EC2 instance"
  value       = aws_instance.demo.public_ip
}
