resource "azurerm_linux_virtual_machine" "vm" {
  name                = var.virtual_machine_name
  location            = var.location
  resource_group_name = var.resource_group_name
  network_interface_ids = var.network_interface_ids
  size = "Standard_D2s_v3"

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    publisher = "Canonical"
    offer     = "0001-com-ubuntu-server-focal"
    sku       = "20_04-lts-gen2"
    version   = "latest"
  }

  admin_username = var.admin_username
  admin_password = var.admin_password

  os_profile_linux_config {
    disable_password_authentication = false
  }
}
