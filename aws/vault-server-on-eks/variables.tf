variable "cluster_name" {
  type = string
}
variable "dev_root_token" {
  description = "Will be used as the root token for the vault server"
  sensitive   = true
}
