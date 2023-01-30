resource "azurerm_resource_group" "rg" {
  name     = "vinod-rg"
  location = "West Europe"

  tags = var.tags
}

module "azurerm_virtual_network" {
  source              = "./modules/virtual_network"
  vnet_name           = "vinodvnet"
  resource_group_name = azurerm_resource_group.rg.name
  location            = azurerm_resource_group.rg.location
  address_space       = ["10.0.0.0/20"]

  depends_on = [
    azurerm_resource_group.rg,
  ]

  tags = var.tags
}
