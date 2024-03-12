resource "azurerm_subnet" "frontendsubnetblock" {
  name                 = "frontendsubnet"
  resource_group_name  = azurerm_resource_group.rgblock.name
  virtual_network_name = azurerm_virtual_network.example.name
  address_prefixes     = ["10.0.2.0/24"]
}