locals {
  iam_map = { for role in var.roles : role => var.service_account }
}

variable "service_account" {
  description = "The service account to assign roles to"
  type        = string
  default = "serviceAccount:phdp-pdf-to-image@bsci-gsk-integration.iam.gserviceaccount.com"
}

variable "roles" {
  description = "List of IAM roles to assign to the service account"
  type        = list(string)
  default     = ["roles/serviceusage.serviceUsageConsumer"]
}


module "mock_iam_assignment" {
  for_each = local.iam_map
  source          = "./templates"
  service_account = "serviceAccount:phdp-pdf-to-image@bsci-gsk-integration.iam.gserviceaccount.com"
  roles           = ["roles/serviceusage.serviceUsageConsumer"]
}
