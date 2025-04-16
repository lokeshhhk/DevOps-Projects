variable "region" {
  description = "AWS region"
  type        = string
  default     = "ap-south-1"
}

variable "s3_bucket_name" {
  description = "Name of the S3 bucket we used here for storing state file"
  type        = string
  default     = "stateremote-backend2025feb1"
}

variable "dynamodb_table_name" {
  description = "Name of the DynamoDB"
  default     = "terraform-lock"
}
