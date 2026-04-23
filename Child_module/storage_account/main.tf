resource "azurerm_storage_account" "stg" {
for_each = var.stgacc
  name                     = each.value.stgname
  resource_group_name      = each.value.resource_group_name
  location                 = each.value.location
  account_tier             = each.value.account_tier
  account_replication_type = each.value.replication_type
  tags = {
    environment = "staging"
  }
}
