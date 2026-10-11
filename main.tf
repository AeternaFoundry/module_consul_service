resource "consul_service" "services" {
  for_each = var.services

  name                = each.value.name
  node                = each.value.node
  address             = each.value.address
  datacenter          = each.value.datacenter
  enable_tag_override = each.value.enable_tag_override
  external            = each.value.external
  meta                = each.value.meta
  namespace           = each.value.namespace
  partition           = each.value.partition
  port                = each.value.port
  service_id          = each.value.service_id
  tags                = each.value.tags
  weights             = each.value.weights

  dynamic "check" {
    for_each = each.value.check != null ? each.value.check : []
    content {
      check_id                          = check.value.check_id
      deregister_critical_service_after = check.value.deregister_critical_service_after
      dynamic "header" {
        for_each = check.value.header != null ? check.value.header : []
        content {
          name  = header.value.name
          value = header.value.value
        }
      }
      http            = check.value.http
      interval        = check.value.interval
      method          = check.value.method
      name            = check.value.name
      notes           = check.value.notes
      status          = check.value.status
      tcp             = check.value.tcp
      timeout         = check.value.timeout
      tls_skip_verify = check.value.tls_skip_verify
    }
  }
}

