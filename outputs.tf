output "virtual_hub_route_table_lookup_id" {
  description = "Map of id values across all virtual_hub_route_table_lookup, keyed the same as var.virtual_hub_route_table_lookup"
  value       = { for k, v in data.azurerm_virtual_hub_route_table.virtual_hub_route_table_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "virtual_hub_route_table_lookup_labels" {
  description = "Map of labels values across all virtual_hub_route_table_lookup, keyed the same as var.virtual_hub_route_table_lookup"
  value       = { for k, v in data.azurerm_virtual_hub_route_table.virtual_hub_route_table_lookup : k => v.labels if v.labels != null && length(v.labels) > 0 }
}
output "virtual_hub_route_table_lookup_name" {
  description = "Map of name values across all virtual_hub_route_table_lookup, keyed the same as var.virtual_hub_route_table_lookup"
  value       = { for k, v in data.azurerm_virtual_hub_route_table.virtual_hub_route_table_lookup : k => v.name if v.name != null && length(v.name) > 0 }
}
output "virtual_hub_route_table_lookup_resource_group_name" {
  description = "Map of resource_group_name values across all virtual_hub_route_table_lookup, keyed the same as var.virtual_hub_route_table_lookup"
  value       = { for k, v in data.azurerm_virtual_hub_route_table.virtual_hub_route_table_lookup : k => v.resource_group_name if v.resource_group_name != null && length(v.resource_group_name) > 0 }
}
output "virtual_hub_route_table_lookup_route" {
  description = "Map of route values across all virtual_hub_route_table_lookup, keyed the same as var.virtual_hub_route_table_lookup"
  value       = { for k, v in data.azurerm_virtual_hub_route_table.virtual_hub_route_table_lookup : k => v.route if v.route != null && length(v.route) > 0 }
}
output "virtual_hub_route_table_lookup_virtual_hub_id" {
  description = "Map of virtual_hub_id values across all virtual_hub_route_table_lookup, keyed the same as var.virtual_hub_route_table_lookup"
  value       = { for k, v in data.azurerm_virtual_hub_route_table.virtual_hub_route_table_lookup : k => v.virtual_hub_id if v.virtual_hub_id != null && length(v.virtual_hub_id) > 0 }
}
output "virtual_hub_route_table_lookup_virtual_hub_name" {
  description = "Map of virtual_hub_name values across all virtual_hub_route_table_lookup, keyed the same as var.virtual_hub_route_table_lookup"
  value       = { for k, v in data.azurerm_virtual_hub_route_table.virtual_hub_route_table_lookup : k => v.virtual_hub_name if v.virtual_hub_name != null && length(v.virtual_hub_name) > 0 }
}

