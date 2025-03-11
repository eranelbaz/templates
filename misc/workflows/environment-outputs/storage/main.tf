output "storage_bucket_name" {
  description = "Name of the storage bucket."
  value       = "demo-${random_string.random}-${var.bucket_name}"
}

resource "random_string" "random" {
  length           = 16
  special          = false
}

variable "bucket_name" {
  description = "The name of the bucket"
}