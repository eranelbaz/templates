output "load_balancer_dns_name" {
  description = "DNS name of the load balancer."
  value       = "${var.name}.example.com"
}
variable "name" {
  description = "The name of the bucket"
}