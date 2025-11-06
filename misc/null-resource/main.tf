resource "null_resource" "null" {
  count = 1
}

resource "random_password" "password" {
  length           = 17
  special          = true
  override_special = "!#$%&*()-_=+[]{}<>:?"
}

output "pass" {
  value = nonsensitive(random_password.password)
  sensitive = true
}
