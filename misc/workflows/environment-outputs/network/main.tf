output "subnet_ids" {
  description = "Map of subnet names to IDs."
  value       = {
    default = {
      "subnet1" = "subnet-12345678"
      "subnet2" = "subnet-23456789"
    }
  }
}

output "vpc_id" {
  description = "VPC ID."
  value       = "vpc-12345678"
}