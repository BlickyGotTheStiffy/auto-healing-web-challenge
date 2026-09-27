resource "azurerm_resource_group" "main" {
    name     = var.resource_group_name
    location = var.location
}


resource "azurerm_virtual_network" "main" {
    name                = "vnet_autoheal-dev-aue"
    address_space       = ["10.0.0.0/16"]
    location            = var.location
    resource_group_name = azurerm_resource_group.main.name
}

resource "azurerm_subnet" "web" {
    name                        = "snet-web"
    resource_group_name         = azurerm_resource_group.main.name
    virtual_network_name        = azurerm_virtual_network.main.name
    address_prefixes            = ["10.0.1.0/24"]
}

resource "azurerm_network_security_group" "web" {
  name                = "nsg-web"
  location            = var.location
  resource_group_name = azurerm_resource_group.main.name
}