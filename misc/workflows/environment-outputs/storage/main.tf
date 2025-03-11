output "storage_bucket_name" {
  description = "Name of the storage bucket."
  value       = "demo-${random_string.random.result}-${var.name}"
}

resource "random_string" "random" {
  length           = 16
  special          = false
}

variable "name" {
  description = "The name of the bucket"
}