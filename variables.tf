variable "core_instance_console_connections_lookup" {
  description = <<EOT
Map of core_instance_console_connections_lookup, attributes below
Required:
    - compartment_id
Optional:
    - instance_id
    - filter (block):
        - name (required)
        - regex (optional)
        - values (required)
EOT

  type = map(object({
    compartment_id = string
    instance_id    = optional(string)
    filter = optional(list(object({
      name   = string
      regex  = optional(bool)
      values = list(string)
    })))
  }))
}

