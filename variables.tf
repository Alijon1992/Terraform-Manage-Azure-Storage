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




