module "azurerm_resource_group" {
  source         = "../../Child_module/resource_group"
  resource_group = var.rg
}

module "azurerm_storage_account" {
  depends_on = [module.azurerm_resource_group]
  source     = "../../Child_module/storage_account"
  stgacc     = var.stgacc
}
module "azurerm_virtual_network" {
  depends_on = [module.azurerm_resource_group]
  source     = "../../Child_module/virtual_network"
  vnetairtel = var.vnets
}
module "subnet" {
  depends_on = [module.azurerm_virtual_network]
  source     = "../../Child_module/Subnet"
  subnet     = var.subnets
}
module "nsgrajat" {
  depends_on = [module.azurerm_resource_group]
  source     = "../../Child_module/Network_Security_Group"
  nsgrajat   = var.nsgs
}

module "accociate" {

  source             = "../../Child_module/Associate"
  depends_on         = [module.subnet, module.nsgrajat]
  nsgsubnetassociate = var.accociate
}
