data "azurerm_virtual_hub_route_table" "virtual_hub_route_table_lookup" {
  for_each = var.virtual_hub_route_table_lookup

  name                = each.value.name
  resource_group_name = each.value.resource_group_name
  virtual_hub_name    = each.value.virtual_hub_name
}

