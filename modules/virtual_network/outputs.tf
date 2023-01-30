output "vnet_id" {
  description = "The virtual Network Configuration ID. "
  value       = azurerm_virtual_network.vnet.id
}

output "vnet_name" {
  description = "The name of the virtual network. "
  value       = azurerm_virtual_network.vnet.name
}

output "vnet_rg_name" {
  description = "The name of the resource group in which the virtual network is created. "
  value       = azurerm_virtual_network.vnet.resource_group_name
}

output "vnet_location" {
  description = "The location/region where the virtual network is created. "
  value       = azurerm_virtual_network.vnet.location
}

output "vnet_address_space" {
  description = "The list of address spaces used by the virtual network. "
  value       = azurerm_virtual_network.vnet.address_space
}
