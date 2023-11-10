# Create First Resource Group 1
module "rg1" {
  source = "../Module/Resource_Group"
  name = var.rg1_name
  location = var.rg1_location
}

# Create Virtual Network
module "vnet1" {
  source = "../Module/Virtual_Network"
  name = var.vnet1_name
  resource_group_name = module.rg1.name
  location = module.rg1.location
  address_space = var.vnet1_address_space
  dns_servers = var.vnet1_dns_servers
}







