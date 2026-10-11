variable "services" {
  description = <<EOT
Map of services, attributes below
Required:
    - name
    - node
Optional:
    - address
    - datacenter
    - enable_tag_override
    - external
    - meta
    - namespace
    - partition
    - port
    - service_id
    - tags
    - weights
    - check (block):
        - check_id (required)
        - deregister_critical_service_after (optional)
        - header (optional, block):
            - name (required)
            - value (required)
        - http (optional)
        - interval (required)
        - method (optional)
        - name (required)
        - notes (optional)
        - status (optional)
        - tcp (optional)
        - timeout (required)
        - tls_skip_verify (optional)
EOT

  type = map(object({
    name                = string
    node                = string
    address             = optional(string)
    datacenter          = optional(string)
    enable_tag_override = optional(bool)
    external            = optional(bool)
    meta                = optional(map(string))
    namespace           = optional(string)
    partition           = optional(string)
    port                = optional(number)
    service_id          = optional(string)
    tags                = optional(list(string))
    weights             = optional(map(number))
    check = optional(list(object({
      check_id                          = string
      deregister_critical_service_after = optional(string)
      header = optional(list(object({
        name  = string
        value = list(string)
      })))
      http            = optional(string)
      interval        = string
      method          = optional(string)
      name            = string
      notes           = optional(string)
      status          = optional(string)
      tcp             = optional(string)
      timeout         = string
      tls_skip_verify = optional(bool)
    })))
  }))
}

