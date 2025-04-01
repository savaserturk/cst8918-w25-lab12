resource "azurerm_resource_group" "app_rg" {
  name     = "ertu0002-a12-rg"
  location = "canadacentral"
}


# Define the virtual network
resource "azurerm_virtual_network" "vnet" {
  name                = "ertu0002-a12-A12Vnet"
  address_space       = ["10.0.0.0/16"]
  location            = azurerm_resource_group.app_rg.location
  resource_group_name = azurerm_resource_group.app_rg.name
}


# Define the subnet
resource "azurerm_subnet" "webserver" {
  name                 = "ertu0002-a12-A12Subnet"
  resource_group_name  = azurerm_resource_group.app_rg.name
  virtual_network_name = azurerm_virtual_network.vnet.name
  address_prefixes     = ["10.0.1.0/24"]
}