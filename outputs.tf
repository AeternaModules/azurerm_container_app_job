output "container_app_jobs_id" {
  description = "Map of id values across all container_app_jobs, keyed the same as var.container_app_jobs"
  value       = { for k, v in azurerm_container_app_job.container_app_jobs : k => v.id if v.id != null && length(v.id) > 0 }
}
output "container_app_jobs_container_app_environment_id" {
  description = "Map of container_app_environment_id values across all container_app_jobs, keyed the same as var.container_app_jobs"
  value       = { for k, v in azurerm_container_app_job.container_app_jobs : k => v.container_app_environment_id if v.container_app_environment_id != null && length(v.container_app_environment_id) > 0 }
}
output "container_app_jobs_event_stream_endpoint" {
  description = "Map of event_stream_endpoint values across all container_app_jobs, keyed the same as var.container_app_jobs"
  value       = { for k, v in azurerm_container_app_job.container_app_jobs : k => v.event_stream_endpoint if v.event_stream_endpoint != null && length(v.event_stream_endpoint) > 0 }
}
output "container_app_jobs_event_trigger_config" {
  description = "Map of event_trigger_config values across all container_app_jobs, keyed the same as var.container_app_jobs"
  value       = { for k, v in azurerm_container_app_job.container_app_jobs : k => v.event_trigger_config if v.event_trigger_config != null && length(v.event_trigger_config) > 0 }
}
output "container_app_jobs_identity" {
  description = "Map of identity values across all container_app_jobs, keyed the same as var.container_app_jobs"
  value       = { for k, v in azurerm_container_app_job.container_app_jobs : k => v.identity if v.identity != null && length(v.identity) > 0 }
}
output "container_app_jobs_location" {
  description = "Map of location values across all container_app_jobs, keyed the same as var.container_app_jobs"
  value       = { for k, v in azurerm_container_app_job.container_app_jobs : k => v.location if v.location != null && length(v.location) > 0 }
}
output "container_app_jobs_manual_trigger_config" {
  description = "Map of manual_trigger_config values across all container_app_jobs, keyed the same as var.container_app_jobs"
  value       = { for k, v in azurerm_container_app_job.container_app_jobs : k => v.manual_trigger_config if v.manual_trigger_config != null && length(v.manual_trigger_config) > 0 }
}
output "container_app_jobs_name" {
  description = "Map of name values across all container_app_jobs, keyed the same as var.container_app_jobs"
  value       = { for k, v in azurerm_container_app_job.container_app_jobs : k => v.name if v.name != null && length(v.name) > 0 }
}
output "container_app_jobs_outbound_ip_addresses" {
  description = "Map of outbound_ip_addresses values across all container_app_jobs, keyed the same as var.container_app_jobs"
  value       = { for k, v in azurerm_container_app_job.container_app_jobs : k => v.outbound_ip_addresses if v.outbound_ip_addresses != null && length(v.outbound_ip_addresses) > 0 }
}
output "container_app_jobs_registry" {
  description = "Map of registry values across all container_app_jobs, keyed the same as var.container_app_jobs"
  value       = { for k, v in azurerm_container_app_job.container_app_jobs : k => v.registry if v.registry != null && length(v.registry) > 0 }
}
output "container_app_jobs_replica_retry_limit" {
  description = "Map of replica_retry_limit values across all container_app_jobs, keyed the same as var.container_app_jobs"
  value       = { for k, v in azurerm_container_app_job.container_app_jobs : k => v.replica_retry_limit if v.replica_retry_limit != null }
}
output "container_app_jobs_replica_timeout_in_seconds" {
  description = "Map of replica_timeout_in_seconds values across all container_app_jobs, keyed the same as var.container_app_jobs"
  value       = { for k, v in azurerm_container_app_job.container_app_jobs : k => v.replica_timeout_in_seconds if v.replica_timeout_in_seconds != null }
}
output "container_app_jobs_resource_group_name" {
  description = "Map of resource_group_name values across all container_app_jobs, keyed the same as var.container_app_jobs"
  value       = { for k, v in azurerm_container_app_job.container_app_jobs : k => v.resource_group_name if v.resource_group_name != null && length(v.resource_group_name) > 0 }
}
output "container_app_jobs_schedule_trigger_config" {
  description = "Map of schedule_trigger_config values across all container_app_jobs, keyed the same as var.container_app_jobs"
  value       = { for k, v in azurerm_container_app_job.container_app_jobs : k => v.schedule_trigger_config if v.schedule_trigger_config != null && length(v.schedule_trigger_config) > 0 }
}
output "container_app_jobs_secret" {
  description = "Map of secret values across all container_app_jobs, keyed the same as var.container_app_jobs"
  value       = { for k, v in azurerm_container_app_job.container_app_jobs : k => v.secret if v.secret != null && length(v.secret) > 0 }
  sensitive   = true
}
output "container_app_jobs_tags" {
  description = "Map of tags values across all container_app_jobs, keyed the same as var.container_app_jobs"
  value       = { for k, v in azurerm_container_app_job.container_app_jobs : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "container_app_jobs_template" {
  description = "Map of template values across all container_app_jobs, keyed the same as var.container_app_jobs"
  value       = { for k, v in azurerm_container_app_job.container_app_jobs : k => v.template if v.template != null && length(v.template) > 0 }
}
output "container_app_jobs_workload_profile_name" {
  description = "Map of workload_profile_name values across all container_app_jobs, keyed the same as var.container_app_jobs"
  value       = { for k, v in azurerm_container_app_job.container_app_jobs : k => v.workload_profile_name if v.workload_profile_name != null && length(v.workload_profile_name) > 0 }
}

