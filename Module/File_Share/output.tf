output "file_share_name" {
  description = "The name of the created Azure Files share"
  value       = azurerm_storage_share.file_share.name
}

output "file_share_url" {
  description = "The URL of the created Azure Files share"
  value       = azurerm_storage_share.file_share.url
}

output "file_share_id" {
  description = "The ID of the created Azure Files share"
  value       = azurerm_storage_share.file_share.id
}

output "file_share_quota" {
  description = "The quota (size) of the created Azure Files share"
  value       = azurerm_storage_share.file_share.quota
}
