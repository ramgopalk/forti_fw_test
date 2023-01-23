#vnet
resource "azurerm_virtual_network" "vnet" {
  name                = var.vnet
  address_space       = [var.vnetcidr]
  location            = var.location
  resource_group_name = var.resourcegroup
}

#subnet
resource "azurerm_subnet" "subnet" {
  for_each             = var.subnets
  name                 = each.value["name"]
  resource_group_name  = var.resourcegroup
  virtual_network_name = var.vnet
  address_prefixes     = each.value["address_prefixes"]
}