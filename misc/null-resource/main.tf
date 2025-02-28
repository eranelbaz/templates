terraform {
  required_providers {
    env0 = {
      source = "env0/env0"
      version = "1.24.7"
    }
  }
}



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
  default     = ["serviceAccount:phdp-pdf-to-image@bsci-gsk-integration.iam.gserviceaccount.com"]
}


module "alloy_db_writer_project_iam" {
  for_each = local.iam_map
  source          = "./templates"
  service_account = "serviceAccount:phdp-pdf-to-image@bsci-gsk-integration.iam.gserviceaccount.com"
  roles           = ["roles/serviceusage.serviceUsageConsumer"]
}
