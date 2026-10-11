output "core_instance_console_connections_lookup_id" {
  description = "Map of id values across all core_instance_console_connections_lookup, keyed the same as var.core_instance_console_connections_lookup except keys with no id are omitted"
  value       = { for k, v in data.oci_core_instance_console_connections.core_instance_console_connections_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "core_instance_console_connections_lookup_compartment_id" {
  description = "Map of compartment_id values across all core_instance_console_connections_lookup, keyed the same as var.core_instance_console_connections_lookup except keys with no compartment_id are omitted"
  value       = { for k, v in data.oci_core_instance_console_connections.core_instance_console_connections_lookup : k => v.compartment_id if v.compartment_id != null && length(v.compartment_id) > 0 }
}
output "core_instance_console_connections_lookup_filter" {
  description = "Map of filter values across all core_instance_console_connections_lookup, keyed the same as var.core_instance_console_connections_lookup except keys with no filter are omitted"
  value       = { for k, v in data.oci_core_instance_console_connections.core_instance_console_connections_lookup : k => v.filter if v.filter != null && length(v.filter) > 0 }
}
output "core_instance_console_connections_lookup_instance_console_connections" {
  description = "Map of instance_console_connections values across all core_instance_console_connections_lookup, keyed the same as var.core_instance_console_connections_lookup except keys with no instance_console_connections are omitted"
  value       = { for k, v in data.oci_core_instance_console_connections.core_instance_console_connections_lookup : k => v.instance_console_connections if v.instance_console_connections != null && length(v.instance_console_connections) > 0 }
}
output "core_instance_console_connections_lookup_instance_id" {
  description = "Map of instance_id values across all core_instance_console_connections_lookup, keyed the same as var.core_instance_console_connections_lookup except keys with no instance_id are omitted"
  value       = { for k, v in data.oci_core_instance_console_connections.core_instance_console_connections_lookup : k => v.instance_id if v.instance_id != null && length(v.instance_id) > 0 }
}

