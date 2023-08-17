terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.0.0"
    }
  }
}

#Added Backend
terraform {
  backend "remote" {
    organization = "dev-no-ops-world"
    workspaces {
      name = "tfc-engineering"
    }
  }
}

# Configure the Microsoft Azure Provider
provider "azurerm" {
  features {}
}

module "resource_group" {
  source              = "./modules/resource_group"
  resource_group_name = var.resource_group_name
  location            = var.location
}

module "network" {
  source               = "./modules/network"
  location             = var.location
  virtual_network_name = var.virtual_network_name
  virtual_network_cidr = var.virtual_network_cidr
  subnet_name          = var.subnet_name
  subnet_cidr          = var.subnet_cidr
  resource_group_name  = module.resource_group.resource_group_name
}

module "virtual_machine" {
  source                = "./modules/virtual_machine"
  virtual_machine_name  = var.virtual_machine_name
  location              = var.location
  resource_group_name   = module.resource_group.resource_group_name
  admin_username        = var.admin_username
  admin_password        = var.admin_password
  network_interface_ids = [module.network.nic_id]
}
