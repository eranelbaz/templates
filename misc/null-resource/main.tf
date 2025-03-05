resource "null_resource" "null" {
  count = 10000
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
