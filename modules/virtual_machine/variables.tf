variable "virtual_machine_name" {
  description = "Name of the Azure Virtual Machine."
}

variable "location" {
  description = "Location of the Azure resources."
}

variable "resource_group_name" {
  description = "Name of the Azure Resource Group."
}

variable "admin_username" {
  description = "Admin username for the virtual machine."
}

variable "admin_password" {
  description = "Admin password for the virtual machine."
}


variable "network_interface_ids" {
  description = "List of network interface IDs for the virtual machine."
}
