variable "virtual_network_name" {
  description = "Name of the Azure Virtual Network."
}

variable "virtual_network_cidr" {
  description = "CIDR block for the Virtual Network."
}

variable "subnet_name" {
  description = "Name of the Subnet."
}

variable "subnet_cidr" {
  description = "CIDR block for the Subnet."
}

variable "resource_group_name" {
  description = "Name of the Azure Resource Group."
}

variable "location" {} 
