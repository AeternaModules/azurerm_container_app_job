output "container_app_jobs_container_app_environment_id" {
  description = "Map of container_app_environment_id values across all container_app_jobs, keyed the same as var.container_app_jobs"
  value       = { for k, v in azurerm_container_app_job.container_app_jobs : k => v.container_app_environment_id }
}
output "container_app_jobs_event_stream_endpoint" {
  description = "Map of event_stream_endpoint values across all container_app_jobs, keyed the same as var.container_app_jobs"
  value       = { for k, v in azurerm_container_app_job.container_app_jobs : k => v.event_stream_endpoint }
}
output "container_app_jobs_event_trigger_config" {
  description = "Map of event_trigger_config values across all container_app_jobs, keyed the same as var.container_app_jobs"
  value       = { for k, v in azurerm_container_app_job.container_app_jobs : k => v.event_trigger_config }
}
output "container_app_jobs_identity" {
  description = "Map of identity values across all container_app_jobs, keyed the same as var.container_app_jobs"
  value       = { for k, v in azurerm_container_app_job.container_app_jobs : k => v.identity }
}
output "container_app_jobs_location" {
  description = "Map of location values across all container_app_jobs, keyed the same as var.container_app_jobs"
  value       = { for k, v in azurerm_container_app_job.container_app_jobs : k => v.location }
}
output "container_app_jobs_manual_trigger_config" {
  description = "Map of manual_trigger_config values across all container_app_jobs, keyed the same as var.container_app_jobs"
  value       = { for k, v in azurerm_container_app_job.container_app_jobs : k => v.manual_trigger_config }
}
output "container_app_jobs_name" {
  description = "Map of name values across all container_app_jobs, keyed the same as var.container_app_jobs"
  value       = { for k, v in azurerm_container_app_job.container_app_jobs : k => v.name }
}
output "container_app_jobs_outbound_ip_addresses" {
  description = "Map of outbound_ip_addresses values across all container_app_jobs, keyed the same as var.container_app_jobs"
  value       = { for k, v in azurerm_container_app_job.container_app_jobs : k => v.outbound_ip_addresses }
}
output "container_app_jobs_registry" {
  description = "Map of registry values across all container_app_jobs, keyed the same as var.container_app_jobs"
  value       = { for k, v in azurerm_container_app_job.container_app_jobs : k => v.registry }
}
output "container_app_jobs_replica_retry_limit" {
  description = "Map of replica_retry_limit values across all container_app_jobs, keyed the same as var.container_app_jobs"
  value       = { for k, v in azurerm_container_app_job.container_app_jobs : k => v.replica_retry_limit }
}
output "container_app_jobs_replica_timeout_in_seconds" {
  description = "Map of replica_timeout_in_seconds values across all container_app_jobs, keyed the same as var.container_app_jobs"
  value       = { for k, v in azurerm_container_app_job.container_app_jobs : k => v.replica_timeout_in_seconds }
}
output "container_app_jobs_resource_group_name" {
  description = "Map of resource_group_name values across all container_app_jobs, keyed the same as var.container_app_jobs"
  value       = { for k, v in azurerm_container_app_job.container_app_jobs : k => v.resource_group_name }
}
output "container_app_jobs_schedule_trigger_config" {
  description = "Map of schedule_trigger_config values across all container_app_jobs, keyed the same as var.container_app_jobs"
  value       = { for k, v in azurerm_container_app_job.container_app_jobs : k => v.schedule_trigger_config }
}
output "container_app_jobs_secret" {
  description = "Map of secret values across all container_app_jobs, keyed the same as var.container_app_jobs"
  value       = { for k, v in azurerm_container_app_job.container_app_jobs : k => v.secret }
  sensitive   = true
}
output "container_app_jobs_tags" {
  description = "Map of tags values across all container_app_jobs, keyed the same as var.container_app_jobs"
  value       = { for k, v in azurerm_container_app_job.container_app_jobs : k => v.tags }
}
output "container_app_jobs_template" {
  description = "Map of template values across all container_app_jobs, keyed the same as var.container_app_jobs"
  value       = { for k, v in azurerm_container_app_job.container_app_jobs : k => v.template }
}
output "container_app_jobs_workload_profile_name" {
  description = "Map of workload_profile_name values across all container_app_jobs, keyed the same as var.container_app_jobs"
  value       = { for k, v in azurerm_container_app_job.container_app_jobs : k => v.workload_profile_name }
}

