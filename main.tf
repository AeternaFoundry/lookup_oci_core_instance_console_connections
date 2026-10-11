data "oci_core_instance_console_connections" "core_instance_console_connections_lookup" {
  for_each = var.core_instance_console_connections_lookup

  compartment_id = each.value.compartment_id
  instance_id    = each.value.instance_id

  dynamic "filter" {
    for_each = each.value.filter != null ? each.value.filter : []
    content {
      name   = filter.value.name
      regex  = filter.value.regex
      values = filter.value.values
    }
  }
}

