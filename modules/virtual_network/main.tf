resource "azurerm_virtual_network" "vnet" {
  name                = var.vnet_name
  resource_group_name = var.resource_group_name
  address_space       = var.address_space
  location            = var.location
  bgp_community       = var.bgp_community

  dynamic "ddos_protection_plan" {
    for_each = var.ddos_protection_plan
    content {
      id     = lookup(ddos_protection_plan.value, id, null)
      enable = lookup(ddos_protection_plan.value, enable, null)
    }
  }

  dns_servers             = var.dns_servers
  edge_zone               = var.edge_zone
  flow_timeout_in_minutes = var.flow_timeout_in_minutes

  dynamic "subnet" {
    for_each = var.subnet
    content {
      name           = lookup(subnet.value, name, null)
      address_prefix = lookup(subnet.value, address_prefix, null)
      security_group = lookup(subnet.value, security_group, null)
    }
  }

  tags = var.tags
}
