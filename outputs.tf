output "services_id" {
  description = "Map of id values across all services, keyed the same as var.services except keys with no id are omitted"
  value       = { for k, v in consul_service.services : k => v.id if v.id != null && length(v.id) > 0 }
}
output "services_address" {
  description = "Map of address values across all services, keyed the same as var.services except keys with no address are omitted"
  value       = { for k, v in consul_service.services : k => v.address if v.address != null && length(v.address) > 0 }
}
output "services_check" {
  description = "Map of check values across all services, keyed the same as var.services except keys with no check are omitted"
  value       = { for k, v in consul_service.services : k => v.check if v.check != null && length(v.check) > 0 }
}
output "services_datacenter" {
  description = "Map of datacenter values across all services, keyed the same as var.services except keys with no datacenter are omitted"
  value       = { for k, v in consul_service.services : k => v.datacenter if v.datacenter != null && length(v.datacenter) > 0 }
}
output "services_enable_tag_override" {
  description = "Map of enable_tag_override values across all services, keyed the same as var.services except keys with no enable_tag_override are omitted"
  value       = { for k, v in consul_service.services : k => v.enable_tag_override if v.enable_tag_override != null }
}
output "services_external" {
  description = "Map of external values across all services, keyed the same as var.services except keys with no external are omitted"
  value       = { for k, v in consul_service.services : k => v.external if v.external != null }
}
output "services_meta" {
  description = "Map of meta values across all services, keyed the same as var.services except keys with no meta are omitted"
  value       = { for k, v in consul_service.services : k => v.meta if v.meta != null && length(v.meta) > 0 }
}
output "services_name" {
  description = "Map of name values across all services, keyed the same as var.services except keys with no name are omitted"
  value       = { for k, v in consul_service.services : k => v.name if v.name != null && length(v.name) > 0 }
}
output "services_namespace" {
  description = "Map of namespace values across all services, keyed the same as var.services except keys with no namespace are omitted"
  value       = { for k, v in consul_service.services : k => v.namespace if v.namespace != null && length(v.namespace) > 0 }
}
output "services_node" {
  description = "Map of node values across all services, keyed the same as var.services except keys with no node are omitted"
  value       = { for k, v in consul_service.services : k => v.node if v.node != null && length(v.node) > 0 }
}
output "services_partition" {
  description = "Map of partition values across all services, keyed the same as var.services except keys with no partition are omitted"
  value       = { for k, v in consul_service.services : k => v.partition if v.partition != null && length(v.partition) > 0 }
}
output "services_port" {
  description = "Map of port values across all services, keyed the same as var.services except keys with no port are omitted"
  value       = { for k, v in consul_service.services : k => v.port if v.port != null }
}
output "services_service_id" {
  description = "Map of service_id values across all services, keyed the same as var.services except keys with no service_id are omitted"
  value       = { for k, v in consul_service.services : k => v.service_id if v.service_id != null && length(v.service_id) > 0 }
}
output "services_tags" {
  description = "Map of tags values across all services, keyed the same as var.services except keys with no tags are omitted"
  value       = { for k, v in consul_service.services : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "services_weights" {
  description = "Map of weights values across all services, keyed the same as var.services except keys with no weights are omitted"
  value       = { for k, v in consul_service.services : k => v.weights if v.weights != null && length(v.weights) > 0 }
}

