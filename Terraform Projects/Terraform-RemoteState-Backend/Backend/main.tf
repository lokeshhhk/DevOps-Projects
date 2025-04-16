provider "aws" {
  region = var.region
}

#Creating a S3 Bucket for storing state files
resource "aws_s3_bucket" "s3_bucket" {
  bucket = var.s3_bucket_name
}

#Creating a Dynamo Table for locking the state file so that we can avoid parallel execution
resource "aws_dynamodb_table" "terraform-lock" {
  name         = var.dynamodb_table_name
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }
}

#By this we can follow the good practice of IDEAL SETUP OF Terraform.