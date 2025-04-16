variable "aws_region" {
  description = "AWS region for creating resources"
  default     = "ap-south-1"
}

variable "instance_type" {
  description = "EC2 instance type"
  default     = "t2.micro"
}

variable "ami_id" {
  description = "AMI ID for the EC2 instance(Ubuntu and for region ap-south-1)"
  default     = "ami-00bb6a80f01f03502"
}

#The AMI ID is changing depending upon the region