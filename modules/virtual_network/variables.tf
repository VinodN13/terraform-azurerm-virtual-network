variable "vnet_name" {
  type        = string
  description = "The name of the virtual network. "
  default     = null
}

variable "resource_group_name" {
  type        = string
  description = "The name of the resource group in which to create the virtual network. "
  default     = null
}

variable "address_space" {
  type        = list(string)
  description = "The address space that is used the virtual network. "
  default     = null
}

variable "location" {
  type        = string
  description = "The location/region where the virtual network is created. "
  default     = null
}

variable "bgp_community" {
  type        = string
  description = "The BGP community attribute in format <as-number>:<community-value>. "
  default     = null
}

variable "ddos_protection_plan" {
  type        = any
  description = "A ddos_protection_plan block, consists of id and enable. "
  default     = {}
}

variable "dns_servers" {
  type        = list(string)
  description = "List of IP addresses of DNS servers. "
  default     = null
}

variable "edge_zone" {
  type        = string
  description = "Specifies the Edge Zone within the Azure Region where this Virtual Network should exist. "
  default     = null
}

variable "flow_timeout_in_minutes" {
  type        = number
  description = "The flow timeout in minutes for the Virtual Network, which is used to enable connection tracking for intra-VM flows. Possible values are between 4 and 30 minutes. "
  default     = null
}

variable "subnet" {
  type        = any
  description = "Block of subnet, consists of name, address_prefix and security_group. "
  default     = {}
}

variable "tags" {
  type        = map(string)
  description = "A mapping of tags to assign to the resource."
  default     = {}
}
