output "subnet_id" {
  description = "ID of the created Azure Subnet"
  value       = azurerm_subnet.snet.id
}

output "subnet_name" {
  description = "Name of the created Azure Subnet"
  value       = azurerm_subnet.snet.name
}

