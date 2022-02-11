output "rancher_endpoint" {
  description = "Rancher HTTPS Endpoint"
  value = "https://${var.dns_rancher_ui_name}.${var.dns_zone_name}"
}