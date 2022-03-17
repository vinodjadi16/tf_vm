resource "azurerm_linux_virtual_machine" "Test-VM01" {
  name                            = "East-web-VM01"
  location              = azurerm_resource_group.rg1.location
  resource_group_name   = azurerm_resource_group.rg1.name
  network_interface_ids           = [azurerm_network_interface.Test-VM01-NIC.id]
  size                            = "Standard_B1s"
  admin_username                  = "azadmin"
  admin_password                  = "Password@123"
  disable_password_authentication = false
  custom_data                     = filebase64("nginx.sh")
  os_disk {
    name                 = "east-web-VM01-myOsDisk"
    caching              = "ReadWrite"
    storage_account_type = "Premium_LRS"
  }

  source_image_reference {
    publisher = "Canonical"
    offer     = "UbuntuServer"
    sku       = "18.04-LTS"
    version   = "latest"
  }
}
