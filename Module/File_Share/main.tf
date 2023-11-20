resource "azurerm_storage_share" "file_share" {
  name                 = var.file_share_name
  storage_account_name = var.storage_account_name
  quota                = var.file_share_quota

  acl {
    id = var.file_share_id

    access_policy {
      permissions = var.file_share_permissions
      start       = var.file_share_start
      expiry      = var.file_share_expiry
    }
  }
}
