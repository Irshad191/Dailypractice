resource "azurerm_network_interface" "frontendnicblock" {
  name                = "frontendnic"
  location            = azurerm_resource_group.rgblock.location
  resource_group_name = azurerm_resource_group.rgblock.name

  ip_configuration {
    name                          = "frontendsubnet"
    subnet_id                     = azurerm_subnet.frontendsubnetblock.id
    private_ip_address_allocation = "Dynamic"
  }
}