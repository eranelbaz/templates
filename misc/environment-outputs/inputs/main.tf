resource "null_resource" "null" {
}


variable "subnets" {
  type        = list(string)
  description = "Private Subnets"
}

variable "vpc_id" {
  type        = string
  description = "VPC ID"
}

variable "allowed_cidr_blocks" {
  type        = list(string)
  description = "Allowed CIDRS"
}

output "abc" {
  value = var.allowed_cidr_blocks
}
