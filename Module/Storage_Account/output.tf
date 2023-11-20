output "id" {
  description = "ID of the created Azure Storage Account"
  value       = azurerm_storage_account.stg_acc.id
}

output "name" {
  description = "ID of the created Azure Storage Account"
  value       = azurerm_storage_account.stg_acc.name
}

output "sas" {
  value = azurerm_storage_account.stg_acc.primary_connection_string
  
}