output "instance_id" {
  description = "The ID of the EC2 instance"
  value       = aws_instance.app_server.id
}

output "instance_public_ip" {
  description = "The public IP address of the EC2 instance"
  value       = aws_instance.app_server.public_ip
}

output "instance_private_ip" {
  description = "The private IP address of the EC2 instance"
  value       = aws_instance.app_server.private_ip
}

output "instance_ami" {
  description = "The AMI ID used for the EC2 instance"
  value       = aws_instance.app_server.ami
}

output "instance_tags" {
  description = "The tags associated with the EC2 instance"
  value       = aws_instance.app_server.tags
}
#Here in the tag we used denotes -> Name of our instance we used for creating that is (Terraform-Demo)
#By this we can address the requester(who asks resources) issue like when we create instance using terraform it only shows that Instance ID by using this 
#Output.tf we can give additonal informations to requester so that he can access