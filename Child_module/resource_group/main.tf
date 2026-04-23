resource "azurerm_resource_group" "Rajatresource" {
  for_each = var.resource_group
  name     = each.value.resource_group_name
  location = each.value.location
}

