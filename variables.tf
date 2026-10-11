variable "database_tools_database_tools_connections_lookup" {
  description = <<EOT
Map of database_tools_database_tools_connections_lookup, attributes below
Required:
    - compartment_id
Optional:
    - display_name
    - related_resource_identifier
    - runtime_identity
    - runtime_support
    - state
    - type
    - filter (block):
        - name (required)
        - regex (optional)
        - values (required)
EOT

  type = map(object({
    compartment_id              = string
    display_name                = optional(string)
    related_resource_identifier = optional(string)
    runtime_identity            = optional(list(string))
    runtime_support             = optional(list(string))
    state                       = optional(string)
    type                        = optional(list(string))
    filter = optional(list(object({
      name   = string
      regex  = optional(bool)
      values = list(string)
    })))
  }))
}

