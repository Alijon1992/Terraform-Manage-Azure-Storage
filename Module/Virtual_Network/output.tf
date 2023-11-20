output "vnet_name" {
  description = "Name of the created Azure Virtual Network"
  value       = azurerm_virtual_network.vnet.name
}

output "vnet_id" {
  description = "ID of the created Azure Virtual Network"
  value       = azurerm_virtual_network.vnet.id
}

