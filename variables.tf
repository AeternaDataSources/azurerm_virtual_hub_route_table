variable "virtual_hub_route_table_lookup" {
  description = <<EOT
Map of virtual_hub_route_table_lookup, attributes below
Required:
    - name
    - resource_group_name
    - virtual_hub_name
EOT

  type = map(object({
    name                = string
    resource_group_name = string
    virtual_hub_name    = string
  }))
  validation {
    condition = alltrue([
      for k, v in var.virtual_hub_route_table_lookup : (
        length(v.resource_group_name) <= 90
      )
    ])
    error_message = "[from resourcegroups.ValidateName: invalid when len(value) > 90]"
  }
  validation {
    condition = alltrue([
      for k, v in var.virtual_hub_route_table_lookup : (
        !endswith(v.resource_group_name, ".")
      )
    ])
    error_message = "[from resourcegroups.ValidateName: must not end with \".\"]"
  }
  validation {
    condition = alltrue([
      for k, v in var.virtual_hub_route_table_lookup : (
        length(v.resource_group_name) != 0
      )
    ])
    error_message = "[from resourcegroups.ValidateName: invalid when len(value) == 0]"
  }
  # Note: 3 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

