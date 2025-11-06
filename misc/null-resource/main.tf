resource "null_resource" "null" {
}

terraform {
  required_providers {
    env0 = {
      source = "env0/env0"
    }
  }
}

# Configure the env0 provider

variable "env0_api_key" {}
variable "env0_api_secret" {}
variable "env0_api_endpoint" {}

provider "env0" {
  api_key    = var.env0_api_key
  api_secret = var.env0_api_secret
  api_endpoint = var.env0_api_endpoint
}

undefined
