terraform {
  backend "s3" {
    bucket         = "remotebackend2025feb01"
    key            = "global/mystatefiles/terraform.tfstate"
    region         = "var.aws_region"
    encrypt        = true
    dynamodb_table = "terraform-lock"
  }
}
