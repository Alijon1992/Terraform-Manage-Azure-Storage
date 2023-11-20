# Create First Resource Group 
module "rg1" {
  source   = "../Module/Resource_Group"
  name     = var.rg1_name
  location = var.rg1_location
}

# Create Virtual Network
module "vnet1" {
  source              = "../Module/Virtual_Network"
  name                = var.vnet1_name
  resource_group_name = module.rg1.name
  location            = module.rg1.location
  address_space       = var.vnet1_address_space
  dns_servers         = var.vnet1_dns_servers
}


# Create subnet
module "snet" {
  source               = "../Module/Subnet"
  address_prefixes     = var.snet_address_prefixes
  name                 = var.snet_name
  resource_group_name  = module.rg1.name
  virtual_network_name = module.vnet1.vnet_name

}

# Create a Piblic IP
module "pip" {
  source              = "../Module/Public_ip"
  name                = var.pip_name
  resource_group_name = module.rg1.name
  location            = module.rg1.location
  allocation_method   = var.pip_allocation_method
}

# Create a network interface card fro our VM to use
module "nic" {
  source                        = "../Module/Network_Interface_Card"
  name                          = var.nic_name
  resource_group_name           = module.rg1.name
  location                      = module.rg1.location
  ip_config_name                = var.nic_ip_name
  subnet_id                     = module.snet.subnet_id
  private_ip_address_allocation = var.nic_private_ip_allocation
  public_ip_address_id          = module.pip.public_ip_id
}

# Create a Windows VM and connect it to our Network Interface Card
module "vm" {
  source                = "../Module/Virtual_Machine"
  name                  = var.vm_name
  resource_group_name   = module.rg1.name
  location              = module.rg1.location
  size                  = var.vm_size
  admin_username        = var.vm_username
  admin_password        = var.vm_password
  network_interface_ids = [module.nic.nic_id]

  # OS Disk
  caching              = var.vm_caching
  storage_account_type = var.vm_stg_acc_type

  # Source image reference
  publisher  = var.vm_publisher
  offer      = var.vm_offer
  sku        = var.vm_sku
  vm_version = var.vm_version
}

# VM Extension
data "template_file" "mypowershellscript" {
  template = file("/Users/alijonbobojonov/Desktop/Terraform-Manage-Azure-Storage/project1/mypowershellscript.ps1")
}

module "vm-extension" {
  source                = "../Module/VM_Extension"
  name                  = var.vm_ext_name
  virtual_machine_id    = module.vm.vm_id
  publisher             = var.vm_ext_publisher
  type                  = var.vm_ext_type
  vm_type_handler_version = var.vm_type_handler_version
  settings              = <<SETTINGS
    {
      "commandToExecute": "powershell -command \"[System.Text.Encoding]::UTF8.GetString([System.Convert]::FromBase64String('${base64encode(data.template_file.mypowershellscript.rendered)}')) | Out-File -filepath mypowershellscript.ps1"
    }
  SETTINGS
}


# Create Second Resource Group 
module "rg2" {
  source   = "../Module/Resource_Group"
  name     = var.rg2_name
  location = var.rg2_location
}

# Create Storage Account
module "stor_acc" {
  source                   = "../Module/Storage_Account"
  stor_name                = var.stor_name
  resource_group_name      = module.rg2.name
  location                 = module.rg2.location
  account_tier             = var.stor_acc_tier
  account_replication_type = var.stor_acc_rep_type
  # Networking Rules
  default_action = var.stor_default_action
  ip_rules       = var.stor_ip_rules
}
# # Create container
module "container1" {
  source                = "../Module/Storage_Container"
  name                  = var.container_name
  storage_account_name  = module.stor_acc.name
  container_access_type = var.container_access_type
}

# Create SAS token
module "storage_sas_token" {
  source            = "../Module/Storage_sas_token"
  connection_string = module.stor_acc.sas
  https_only        = var.stor_sas_https_only
  signed_version    = var.stor_sas_signed_version
  # Resource types
  service   = var.stor_sas_service
  container = var.stor_sas_container
  object    = var.stor_sas_object
  # Services
  blob  = var.stor_sas_blob
  queue = var.stor_sas_queue
  table = var.stor_sas_table
  file  = var.stor_sas_file
  # Token Timer
  start  = var.stor_sas_start
  expiry = var.stor_sas_expiry

  # Permissions
  read    = var.stor_sas_read
  write   = var.stor_sas_write
  delete  = var.stor_sas_delete
  list    = var.stor_sas_list
  add     = var.stor_sas_add
  create  = var.stor_sas_create
  update  = var.stor_sas_update
  process = var.stor_sas_process
  tag     = var.stor_sas_tag
  filter  = var.stor_sas_filter
}

# Role Assignment
data "azurerm_subscription" "primary" {}

data "azurerm_client_config" "example" {}

module "role_assignment" {
  source = "../Module/Role_Assignment"

  scope                = data.azurerm_subscription.primary.id
  role_definition_name = var.role_definition_name
  principal_id         = data.azurerm_client_config.example.object_id
}

# Create File share
module "file_share" {
  source                 = "../Module/File_Share"
  file_share_name        = var.file_share_name
  storage_account_name   = module.stor_acc.name
  file_share_quota       = var.file_share_quota
  file_share_id          = var.file_share_id
  file_share_permissions = var.file_share_permissions
  file_share_start       = var.file_share_start
  file_share_expiry      = var.file_share_expiry
}

# File Upload to Share
module "file_share_upload" {
  source = "../Module/File_Share_Upload"
  name = var.file_upload_name
  storage_share_id = module.file_share.file_share_id
  file_source =  var.file_upload_source
}

# Blob Upload to Container
module "blob_upload" {
  source = "../Module/Blob_Upload"
  name = var.blob_upload_name
  storage_account_name = module.stor_acc.name
  storage_container_name = module.container1.name
  type = var.blob_upload_type
  blob_source = var.blob_upload_source
}