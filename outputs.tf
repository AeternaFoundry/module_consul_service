output "services_id" {
  description = "Map of id values across all services, keyed the same as var.services"
  value       = { for k, v in consul_service.services : k => v.id }
}
output "services_address" {
  description = "Map of address values across all services, keyed the same as var.services"
  value       = { for k, v in consul_service.services : k => v.address }
}
output "services_check" {
  description = "Map of check values across all services, keyed the same as var.services"
  value       = { for k, v in consul_service.services : k => v.check }
}
output "services_datacenter" {
  description = "Map of datacenter values across all services, keyed the same as var.services"
  value       = { for k, v in consul_service.services : k => v.datacenter }
}
output "services_enable_tag_override" {
  description = "Map of enable_tag_override values across all services, keyed the same as var.services"
  value       = { for k, v in consul_service.services : k => v.enable_tag_override }
}
output "services_external" {
  description = "Map of external values across all services, keyed the same as var.services"
  value       = { for k, v in consul_service.services : k => v.external }
}
output "services_meta" {
  description = "Map of meta values across all services, keyed the same as var.services"
  value       = { for k, v in consul_service.services : k => v.meta }
}
output "services_name" {
  description = "Map of name values across all services, keyed the same as var.services"
  value       = { for k, v in consul_service.services : k => v.name }
}
output "services_namespace" {
  description = "Map of namespace values across all services, keyed the same as var.services"
  value       = { for k, v in consul_service.services : k => v.namespace }
}
output "services_node" {
  description = "Map of node values across all services, keyed the same as var.services"
  value       = { for k, v in consul_service.services : k => v.node }
}
output "services_partition" {
  description = "Map of partition values across all services, keyed the same as var.services"
  value       = { for k, v in consul_service.services : k => v.partition }
}
output "services_port" {
  description = "Map of port values across all services, keyed the same as var.services"
  value       = { for k, v in consul_service.services : k => v.port }
}
output "services_service_id" {
  description = "Map of service_id values across all services, keyed the same as var.services"
  value       = { for k, v in consul_service.services : k => v.service_id }
}
output "services_tags" {
  description = "Map of tags values across all services, keyed the same as var.services"
  value       = { for k, v in consul_service.services : k => v.tags }
}
output "services_weights" {
  description = "Map of weights values across all services, keyed the same as var.services"
  value       = { for k, v in consul_service.services : k => v.weights }
}

