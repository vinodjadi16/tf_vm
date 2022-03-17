resource "azurerm_network_interface" "Test-VM01-NIC" {
  name                = var.Test-VM01-NIC01-Name
  location            = azurerm_resource_group.rg1.location
  resource_group_name = azurerm_resource_group.rg1.name

  ip_configuration {
    name                          = "testconfiguration1"
    subnet_id                     = azurerm_subnet.test_vNet01_Inter_sub01.id
    private_ip_address_allocation = "Dynamic"
    public_ip_address_id          = azurerm_public_ip.test-vm01-pip.id
  }
  depends_on = [azurerm_public_ip.test-vm01-pip]
}