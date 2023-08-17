resource "azurerm_linux_virtual_machine" "vm" {
  name                = var.virtual_machine_name
  location            = var.location
  resource_group_name = var.resource_group_name
  network_interface_ids = var.network_interface_ids

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    publisher = "Canonical"
    offer     = "UbuntuServer"
    sku       = "18.04-LTS"
    version   = "latest"
  }

  admin_username = var.admin_username
  admin_password = var.admin_password
}
