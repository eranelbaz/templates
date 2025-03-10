output "subnet_ids" {
  description = "Map of subnet names to IDs."
  value       = {
    default = {
      "subnet1" = "subnet-12345678"
      "subnet2" = "subnet-23456789"
    }
  }
}

output "vnet_id" {
  description = "VNet ID."
  value       = "vnet-12345678"
}