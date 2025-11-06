resource "null_resource" "null" {
}

resource "random_password" "password" {
  length           = 16
  special          = true
  override_special = "!#$%&*()-_=+[]{}<>:?"
}

output "pass" {
  value = random_password.password
}
