resource "azurerm_subnet_network_security_group_association" "subnetaccc" {
  for_each                  = var.nsgsubnetassociate
  subnet_id                 = data.azurerm_subnet.subdata.id
  network_security_group_id = data.azurerm_network_security_group.nsgdata.id
  }




