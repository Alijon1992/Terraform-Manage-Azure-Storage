output "public_ip_name" {
  description = "Name of the created Azure Public IP address"
  value       = azurerm_public_ip.pip.name
}

output "public_ip_id" {
  description = "ID of the created Azure Public IP address"
  value       = azurerm_public_ip.pip.id
}

