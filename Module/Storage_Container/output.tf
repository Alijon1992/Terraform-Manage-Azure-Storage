output "name" {
  description = "Name of the created Azure Storage Container"
  value       = azurerm_storage_container.stc.name
}

output "id" {
  description = "ID of the created Azure Storage Container"
  value       = azurerm_storage_container.stc.id
}

