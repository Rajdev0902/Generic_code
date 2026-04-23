data "azurerm_subnet" "subdata" {
  name                 = "subnetrajat"
  virtual_network_name = "rajatkanet"
  resource_group_name  = "resource-rajat"
}
data "azurerm_network_security_group" "nsgdata" {
  name                = "rajat-nsg"
  resource_group_name = "resource-rajat"
}
