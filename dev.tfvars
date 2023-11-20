# Resource Group 1
rg1_name     = "resourcegroup1"
rg1_location = "canadacentral"

# Virtual Network
vnet1_name          = "deopvnet"
vnet1_address_space = ["10.70.0.0/22"]
vnet1_dns_servers   = ["10.70.0.4"]

# Subnet
snet_address_prefixes = ["10.70.0.0/24"]
snet_name             = "deopsnet"

# Public IP
pip_name              = "public_ip"
pip_allocation_method = "Dynamic"


# Network Interface Card
nic_name                  = "nic"
nic_ip_name               = "public_ip"
nic_private_ip_allocation = "Dynamic"

# Virtual Machine
vm_name     = "deopVM"
vm_size     = "Standard_F2"
vm_username = "alijon"
vm_password = "alijonBobojonov92"

# OS Disk
vm_caching      = "ReadWrite"
vm_stg_acc_type = "Standard_LRS"

# Source image reference
vm_publisher = "MicrosoftWindowsServer"
vm_offer     = "WindowsServer"
vm_sku       = "2016-Datacenter"
vm_version   = "latest"

# VM Extension
vm_ext_name = "script1"
vm_ext_publisher = "Microsoft.Azure.Extensions"
vm_ext_type = "CustomScript"
vm_type_handler_version = "2.0"

# Second Resource Group
rg2_name     = "resourcegroup2"
rg2_location = "canadacentral"

# Storage Account
stor_name           = "alijonbobojonovstorage98"
stor_acc_tier       = "Standard"
stor_acc_rep_type   = "LRS"
stor_default_action = "Deny"
stor_ip_rules       = ["99.228.245.140"]

# Storage container
container_name        = "container1"
container_access_type = "private"



# Storage SAS Token
stor_sas_https_only     = "true"
stor_sas_signed_version = "2017-07-29"
# Resource types
stor_sas_service   = false
stor_sas_container = true
stor_sas_object    = false
# Services
stor_sas_blob  = true
stor_sas_queue = false
stor_sas_table = false
stor_sas_file  = false
# Token Timer
stor_sas_start  = "2023-11-16T00:00:00Z"
stor_sas_expiry = "2023-11-30T00:00:00Z"
# Permissions
stor_sas_read    = true
stor_sas_write   = true
stor_sas_delete  = false
stor_sas_list    = false
stor_sas_add     = true
stor_sas_create  = true
stor_sas_update  = false
stor_sas_process = false
stor_sas_tag     = false
stor_sas_filter  = false

# Role Assignment
role_definition_name = "Storage Blob Data Owner"

# File Share
file_share_name        = "alijon-file-share"
file_share_quota       = "100"
file_share_id          = "MTIzNDU2Nzg5MDEyMzQ1Njc4OTAxMjM0NTY3ODkwMTI"
file_share_permissions = "rwdl"
file_share_start       = "2019-11-16T09:38:21.0000000Z"
file_share_expiry      = "2019-11-30T10:38:21.0000000Z"

# File Upload to Share
file_upload_name = "License.docx"
file_upload_source = "/Users/alijonbobojonov/Desktop/Terraform-Manage-Azure-Storage/License.docx"

# Blob Upload to Container
blob_upload_name = "mypowershellscript.ps1"
blob_upload_type = "Block"
blob_source = "/Users/alijonbobojonov/Desktop/Terraform-Manage-Azure-Storage/project1/mypowershellscript.ps1"