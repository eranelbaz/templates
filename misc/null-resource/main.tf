resource "null_resource" "null" {
}
terraform {
  backend "remote" {
    hostname     = "app.terraform.io"
    organization = "elbazd"

    workspaces {
      name = "templates"
    }
  }
}
