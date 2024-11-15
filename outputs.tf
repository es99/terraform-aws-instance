output "ami" {
  value       = { for instance in aws_instance.ec2 : instance.tags["Name"] => instance.ami }
  description = "AMIs"
}

output "instance_type" {
  value       = { for instance in aws_instance.ec2 : instance.tags["Name"] => instance.instance_type }
  description = "Type of instances"
}

output "ids" {
  value       = { for instance in aws_instance.ec2 : instance.tags["Name"] => instance.id }
  description = "Instance ids"
}

output "public_dns" {
  value       = { for instance in aws_instance.ec2 : instance.tags["Name"] => instance.public_dns }
  description = "Public DNS of instances"
}

output "public_ip" {
  value       = { for instance in aws_instance.ec2 : instance.tags["Name"] => instance.public_ip }
  description = "Public IPs of instances"
}

/*
output "block_device_size" {
  value       = aws_instance.ec2.root_block_device.0.volume_size
  description = "Root volume size"
}

output "block_device_type" {
  value       = aws_instance.ec2.root_block_device.0.volume_type
  description = "Type of volume"
}
*/

output "key_names" {
  value       = { for instance in aws_instance.ec2 : instance.tags["Name"] => instance.key_name }
  description = "Key names passwords"
}

output "iam_roles" {
  value       = { for instance in aws_instance.ec2 : instance.tags["Name"] => instance.iam_instance_profile }
  description = "Iam Roles"
}