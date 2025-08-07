resource "null_resource" "null" {
}

output "not_sensitive_output" {
  value = "not sensitive"
}


output "sensitive_output" {
  value = "sensitive"
  sensitive = true
}

output "vpc_id" {
  description = "VPC ID"
  value       = "vpc-05331f8a7bbafe46d"
}

output "subnets" {
  description = "List of subnet IDs"
  value       = ["subnet-02848bf05f2bb56b2", "subnet-097f2839e9050e61b", "subnet-0ff973a4a5be61835"]
}

output "allowed_cidr_blocks" {
  description = "List of allowed CIDR blocks"
  value       = ["10.36.64.0/26", "10.36.64.64/26", "10.36.64.128/26"]
}