resource "null_resource" "null" {
}

variable "image_id" {
  type = string
}

output "abc" {
  value = var.image_id
}
