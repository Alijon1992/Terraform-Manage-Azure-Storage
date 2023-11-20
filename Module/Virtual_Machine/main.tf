resource "azurerm_windows_virtual_machine" "vm" {
  name                  = var.name
  resource_group_name   = var.resource_group_name
  location              = var.location
  network_interface_ids = var.network_interface_ids
  size                  = var.size
  admin_username        = var.admin_username
  admin_password        = var.admin_password
  os_disk {
    caching              = var.caching
    storage_account_type = var.storage_account_type
  }
  source_image_reference {
    publisher = var.publisher
    offer     = var.offer
    sku       = var.sku
    version   = var.vm_version
  }
}
