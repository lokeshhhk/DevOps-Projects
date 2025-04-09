provider "aws" {
  region = "ap-south-1"
}

#We creating an EC2 Instance
resource "aws_instance" "app_server" {
  ami           = "ami-00bb6a80f01f03502"
  instance_type = "t2.micro"

  tags = {
    Name = "Terraform_Demo" #This will be our instance name - we can check this in our aws console
  }
}



















#We creating an EC2 Instance
resource "aws_instance" "app_server" {
  ami           = var.ami_id
  instance_type = var.instance_type

  tags = {
    Name = "Terraform_Demo" #This will be our instance name - we can check this in our aws console
  }
}
