resource "azurerm_public_ip" "test-vm01-pip" {
  name                = var.test-vm01-pip-Name
  resource_group_name = azurerm_resource_group.rg1.name
  location            = azurerm_resource_group.rg1.location
  allocation_method   = "Static"

  tags = {
    environment = "Production"
    Bussiness   = "Batch4-POC"
  }
}
