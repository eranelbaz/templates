resource "null_resource" "null" {
}

variable "image_id" {
  type = string
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
  value = var.image_id
}
