provider "aws" {
  region = "us-east-1"

}

resource "aws_s3_bucket" "example" {
  bucket = "env0-check-tg-is-worky-or-not-worky"
}
