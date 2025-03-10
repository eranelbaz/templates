output "subnet_ids" {
  description = "Map of subnet names to IDs."
  value       = {
    default = {
      "subnet1" = "subnet-12345678"
      "subnet2" = "subnet-23456789"
    }
  }
}

output "aks_subnet_id" {
  description = "ID of the subnet to deploy the AKS cluster into."
  value       = "subnet-12345678"
}

output "vnet_id" {
  description = "VNet ID."
  value       = "vnet-12345678"
}