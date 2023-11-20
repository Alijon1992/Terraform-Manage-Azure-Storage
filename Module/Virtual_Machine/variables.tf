variable "name" {
  type = string
}

variable "resource_group_name" {
  type = string
}

variable "location" {
  type = string
}

variable "network_interface_ids" {
  type = list(string)
}

variable "size" {
  type = string
}

variable "admin_username" {
  type = string
}

variable "admin_password" {
  type = string
}

#os_disk

variable "caching" {
  type = string
}

variable "storage_account_type" {
  type = string
}

#source_image_reference

variable "publisher" {
  type = string
}

variable "offer" {
  type = string
}

variable "sku" {
  type = string
}

variable "vm_version" {
  type = string
}

