output "file_url" {
  description = "URL of the uploaded file"
  value       = azurerm_storage_share_file.file_share_upload.id
}
