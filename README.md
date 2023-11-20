##Terraform Azure Storage Management
This repository provides Terraform configurations to manage Azure Storage resources efficiently. Follow these steps to set up your Azure Storage environment.

Prerequisites
Before you begin, ensure you have the following installed:

Terraform
Azure CLI or Azure PowerShell for authentication and management
Getting Started
Clone the Repository:

bash
Copy code
git clone https://github.com/Alijon1992/Terraform-Manage-Azure-Storage.git
cd Terraform-Manage-Azure-Storage
Initialize Terraform:

bash
Copy code
terraform init
This command initializes your Terraform configuration, downloading the necessary providers and setting up the working directory.

Configure Azure Authentication:

Ensure that you are authenticated to your Azure subscription. You can use Azure CLI or Azure PowerShell for this.

Example using Azure CLI:

bash
Copy code
az login
Create dev.tfvars:

Create a file named dev.tfvars in the root directory. This file will contain your environment-specific variables.

Example dev.tfvars:

hcl
Copy code
# Azure Storage Account
stor_name = "your_unique_storage_name"
rg2_name = "your_resource_group_name"
stor_acc_tier = "Standard"
stor_acc_rep_type = "LRS"
# ... add other variables ...
Adjust the values based on your environment.

Apply Terraform Configurations:

bash
Copy code
terraform apply -var-file="dev.tfvars"
Terraform will prompt you to confirm the changes. Type yes to apply the configurations.

Review and Confirm:

Review the resources that Terraform will create and confirm the action. This step is crucial to avoid unintended changes.

Access and Manage Resources:

Once Terraform completes, you can access your Azure Storage resources and manage them through the Azure portal or other Azure management tools.

Module Details
1. Resource Group
Module: Resource_Group

Description: Create Azure Resource Groups for organizing resources.

hcl
Copy code
module "rg1" {
  source   = "../Module/Resource_Group"
  name     = var.rg1_name
  location = var.rg1_location
}
2. Virtual Network
Module: Virtual_Network

Description: Create Azure Virtual Networks for network isolation.

hcl
Copy code
module "vnet1" {
  source              = "../Module/Virtual_Network"
  name                = var.vnet1_name
  resource_group_name = module.rg1.name
  location            = module.rg1.location
  address_space       = var.vnet1_address_space
  dns_servers         = var.vnet1_dns_servers
}
... Repeat similar sections for other modules.

Contributions and Issues
Contributions are welcome! If you encounter any issues or have suggestions, please open an issue.

License
This project is licensed under the MIT License - see the LICENSE.md file for details.
