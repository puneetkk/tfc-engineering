output "virtual_network_id" {
  value = azurerm_virtual_network.vnet.id
}

output "subnet_id" {
  value = azurerm_subnet.subnet.id
}

output "nic_id" {
  value = azurerm_network_interface.nic.id
}
