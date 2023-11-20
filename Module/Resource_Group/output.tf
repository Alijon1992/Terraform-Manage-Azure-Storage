output "name" {
  description = "The name of the created Azure Resource Group"
  value       = azurerm_resource_group.rg.name
}

output "location" {
  description = "The location of the created Azure Resource Group"
  value       = azurerm_resource_group.rg.location
}

output "id" {
  description = "The ID of the created Azure Resource Group"
  value       = azurerm_resource_group.rg.id
}



