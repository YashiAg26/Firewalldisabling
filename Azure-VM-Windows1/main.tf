data "azurerm_client_config" "current" {}
data "azurerm_resource_group" "rg"{
  name = var.rg_name
}

# Create virtual network
resource "azurerm_virtual_network" "myterraformnetwork" {
  name                = var.vnet_name
  address_space       = var.vnet_cidr
  location            = data.azurerm_resource_group.rg.location
  resource_group_name = data.azurerm_resource_group.rg.name
}

# Create subnet
resource "azurerm_subnet" "myterraformsubnet" {
  name                 = var.subnet_name
  resource_group_name  = data.azurerm_resource_group.rg.name
  virtual_network_name = azurerm_virtual_network.myterraformnetwork.name
  address_prefixes     = var.subnet_cidr
}
