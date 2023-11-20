output "blob_name" {
  description = "The name of the uploaded blob"
  value       = azurerm_storage_blob.blob_upload.name
}

output "blob_url" {
  description = "The URL of the uploaded blob"
  value       = azurerm_storage_blob.blob_upload.url
}

output "blob_id" {
  description = "The ID of the uploaded blob"
  value       = azurerm_storage_blob.blob_upload.id
}

