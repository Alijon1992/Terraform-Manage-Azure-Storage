# Create First Resource Group 1
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
resource "azurerm_public_ip" "pip" {
  name                = var.pip_name
  resource_group_name = module.rg1.name
  location            = module.rg1.location
  allocation_method   = var.pip_allocation_method
}

# Create a network interface card fro our VM to use
module "nic" {
  source              = "../Module/Network_Security_Group"
  name                = var.nic_name
  resource_group_name = module.rg1.name
  location            = module.rg1.location
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
  network_interface_ids = module.nic.nsg_id

  # OS Disk
  caching              = var.vm_caching
  storage_account_type = var.vm_stg_acc_type

  # Source image reference
  publisher = var.vm_publisher
  offer     = var.vm_offer
  sku       = var.vm_sku
  vm_version=var.vm_version
 
}

