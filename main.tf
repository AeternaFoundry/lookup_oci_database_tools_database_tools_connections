data "oci_database_tools_database_tools_connections" "database_tools_database_tools_connections_lookup" {
  for_each = var.database_tools_database_tools_connections_lookup

  compartment_id              = each.value.compartment_id
  display_name                = each.value.display_name
  related_resource_identifier = each.value.related_resource_identifier
  runtime_identity            = each.value.runtime_identity
  runtime_support             = each.value.runtime_support
  state                       = each.value.state
  type                        = each.value.type

  dynamic "filter" {
    for_each = each.value.filter != null ? each.value.filter : []
    content {
      name   = filter.value.name
      regex  = filter.value.regex
      values = filter.value.values
    }
  }
}

