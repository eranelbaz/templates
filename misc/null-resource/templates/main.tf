

variable "service_account" {
  description = "The service account to assign roles to"
  type        = string
}

variable "roles" {
  description = "List of IAM roles to assign to the service account"
  type        = list(string)
  default     = ["roles/serviceusage.serviceUsageConsumer"]
}

locals {
  iam_map = { for role in var.roles : role => var.service_account }
}

resource "env0_azure_cost_credentials" "roles" {
  for_each = local.iam_map
  name            = "cost credentials"
  client_id       = "client id"
  client_secret   = "client secret"
  subscription_id = "43242342dsdfsdfsdf"
  tenant_id       = "fsdf-fsdfdsfs-fsdfsdfsd-fsdfsd"
}

