resource "null_resource" "null" {
}
terraform {
  required_providers {
    aws = {
      source = "opentofu/aws"
      version = "5.89.0"
    }
  }
}

provider "aws" {
  region = "us-west-2"
}

resource "aws_s3_bucket" "example" {
  bucket = "my-tf-test-bucket-elbaz"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}
