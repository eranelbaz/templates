# Generate provider.tf
generate "provider" {
  path      = "provider.tf"
  if_exists = "overwrite_terragrunt"

  contents = <<-EOF
provider "aws" {
  region = "${local.region}"

  assume_role {
    role_arn     = "arn:aws:iam::${local.aws_account_id}:role/some-role"
    session_name = "${local.aws_account_name}"
  }

  default_tags {
    tags = ${jsonencode(local.default_tags)}
  }
}
EOF
}
