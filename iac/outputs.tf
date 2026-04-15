output "web_url" {
  value = "http://localhost:${var.web_port[terraform.workspace]}"
}

output "api_url" {
  value = "http://localhost:${var.api_port[terraform.workspace]}"
}

output "environment" {
  value = terraform.workspace
}
