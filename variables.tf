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




