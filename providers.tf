terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.79.0"
    }
  }

   backend "azurerm" {
    resource_group_name   = "RemoteStateRG"
    storage_account_name  = "deopterraformstate"
    container_name        = "tfstate"
    key                   = "terraform.tfstate"
  }
}

provider "azurerm" {
  features {}
}

