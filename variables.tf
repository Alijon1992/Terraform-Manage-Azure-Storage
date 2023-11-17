# Resource Group 1
variable "rg1_name" {
  type = string

}
variable "rg1_location" {
  type = string
}


# Virtual Network
variable "vnet1_name" {
  type = string
}

variable "vnet1_address_space" {
  type = list(string)
}

variable "vnet1_dns_servers" {
  type = list(string)
}


# Subnet
variable "snet_address_prefixes" {
  type = list(string)
}

variable "snet_name" {
  type = string
}


# Public IP
variable "pip_name" {
  type = string
}

variable "pip_allocation_method" {
  type = string
}


# Network Interface Card
variable "nic_name" {
  type = string
}

variable "nic_ip_name" {
  type = string
}

variable "nic_private_ip_allocation" {
  type = string
}

# Virtual Machine
variable "vm_name" {
  type = string
}

variable "vm_size" {
  type = string
}

variable "vm_username" {
  type = string
}

variable "vm_password" {
  type = string
}

# OS Disk
variable "vm_caching" {
  type = string
}

variable "vm_stg_acc_type" {
  type = string
}

# Source image reference
variable "vm_publisher" {
  type = string
}

variable "vm_offer" {
  type = string
}

variable "vm_sku" {
  type = string
}

variable "vm_version" {
  type = string
}

# Resource Group 2
variable "rg2_name" {
  type = string

}
variable "rg2_location" {
  type = string
}

# Storage account
variable "stor_name" {
  type = string
}

variable "stor_acc_tier" {
  type = string
}

variable "stor_acc_rep_type" {
  type = string
}

variable "stor_default_action" {
  type = string
}

variable "stor_ip_rules" {
  type = list(string)
}
# Storage container
variable "container_name" {
  type = string
}
variable "container_access_type" {
  type = string
}

# Storage SAS Token
variable "stor_sas_https_only" {
  type = bool
}
variable "stor_sas_signed_version" {
  type = string
}
# Resource Types
variable "stor_sas_service" {
  type = bool
}
variable "stor_sas_container" {
  type = bool
}
variable "stor_sas_object" {
  type = bool
}
# Services
variable "stor_sas_blob" {
  type = bool
}
variable "stor_sas_queue" {
  type = bool
}
variable "stor_sas_table" {
  type = bool
}
variable "stor_sas_file" {
  type = bool
}
# SAS Token Validity Period
variable "stor_sas_start" {
  type = string
}
variable "stor_sas_expiry" {
  type = string
}
# Permissions
variable "stor_sas_read" {
  type = bool
}
variable "stor_sas_write" {
  type = bool
}
variable "stor_sas_delete" {
  type = bool
}
variable "stor_sas_list" {
  type = bool
}
variable "stor_sas_add" {
  type = bool
}
variable "stor_sas_create" {
  type = bool
}
variable "stor_sas_update" {
  type = bool
}
variable "stor_sas_process" {
  type = bool
}
variable "stor_sas_tag" {
  type = bool
}
variable "stor_sas_filter" {
  type = bool
}

# Role Assignment
variable "role_definition_name" {
  type    = string
  default = "Storage Blob Data Owner"
}

# File Share
variable "file_share_name" {
  type = string
}

variable "file_share_quota" {
  type = string
}

# Id
variable "file_share_id" {
  type = string
}

# Access policy
variable "file_share_permissions" {
  type = string
}

variable "file_share_start" {
  type = string
}

variable "file_share_expiry" {
  type = string
}

# File Upload to Share
variable "file_upload_name" {
  type = string
}
variable "file_upload_source" {
  type = string
}