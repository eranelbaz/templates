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

resource "null_resource" "iam_assignment" {
  for_each = local.iam_map

  triggers = {
    service_account = each.value
    role            = each.key
  }

  provisioner "local-exec" {
    command = "echo Assigning role ${each.key} to ${each.value}"
  }
}

output "mock_iam_assignment" {
  value = { for role, sa in local.iam_map :
    "module.mock_iam_assignment[\"${sa}\"].null_resource.iam_assignment.roles[\"${role}\"]" => role
  }
}
