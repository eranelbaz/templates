provider "aws" {
}

resource "aws_s3_bucket" "example" {
  bucket = "env0-check-tg-is-worky-or-not-worky"
}
