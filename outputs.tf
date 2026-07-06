output "container_app_jobs" {
  description = "All container_app_job resources"
  value       = azurerm_container_app_job.container_app_jobs
  sensitive   = true
}
output "container_app_jobs_container_app_environment_id" {
  description = "List of container_app_environment_id values across all container_app_jobs"
  value       = [for k, v in azurerm_container_app_job.container_app_jobs : v.container_app_environment_id]
}
output "container_app_jobs_event_stream_endpoint" {
  description = "List of event_stream_endpoint values across all container_app_jobs"
  value       = [for k, v in azurerm_container_app_job.container_app_jobs : v.event_stream_endpoint]
}
output "container_app_jobs_event_trigger_config" {
  description = "List of event_trigger_config values across all container_app_jobs"
  value       = [for k, v in azurerm_container_app_job.container_app_jobs : v.event_trigger_config]
}
output "container_app_jobs_identity" {
  description = "List of identity values across all container_app_jobs"
  value       = [for k, v in azurerm_container_app_job.container_app_jobs : v.identity]
}
output "container_app_jobs_location" {
  description = "List of location values across all container_app_jobs"
  value       = [for k, v in azurerm_container_app_job.container_app_jobs : v.location]
}
output "container_app_jobs_manual_trigger_config" {
  description = "List of manual_trigger_config values across all container_app_jobs"
  value       = [for k, v in azurerm_container_app_job.container_app_jobs : v.manual_trigger_config]
}
output "container_app_jobs_name" {
  description = "List of name values across all container_app_jobs"
  value       = [for k, v in azurerm_container_app_job.container_app_jobs : v.name]
}
output "container_app_jobs_outbound_ip_addresses" {
  description = "List of outbound_ip_addresses values across all container_app_jobs"
  value       = [for k, v in azurerm_container_app_job.container_app_jobs : v.outbound_ip_addresses]
}
output "container_app_jobs_registry" {
  description = "List of registry values across all container_app_jobs"
  value       = [for k, v in azurerm_container_app_job.container_app_jobs : v.registry]
}
output "container_app_jobs_replica_retry_limit" {
  description = "List of replica_retry_limit values across all container_app_jobs"
  value       = [for k, v in azurerm_container_app_job.container_app_jobs : v.replica_retry_limit]
}
output "container_app_jobs_replica_timeout_in_seconds" {
  description = "List of replica_timeout_in_seconds values across all container_app_jobs"
  value       = [for k, v in azurerm_container_app_job.container_app_jobs : v.replica_timeout_in_seconds]
}
output "container_app_jobs_resource_group_name" {
  description = "List of resource_group_name values across all container_app_jobs"
  value       = [for k, v in azurerm_container_app_job.container_app_jobs : v.resource_group_name]
}
output "container_app_jobs_schedule_trigger_config" {
  description = "List of schedule_trigger_config values across all container_app_jobs"
  value       = [for k, v in azurerm_container_app_job.container_app_jobs : v.schedule_trigger_config]
}
output "container_app_jobs_secret" {
  description = "List of secret values across all container_app_jobs"
  value       = [for k, v in azurerm_container_app_job.container_app_jobs : v.secret]
  sensitive   = true
}
output "container_app_jobs_tags" {
  description = "List of tags values across all container_app_jobs"
  value       = [for k, v in azurerm_container_app_job.container_app_jobs : v.tags]
}
output "container_app_jobs_template" {
  description = "List of template values across all container_app_jobs"
  value       = [for k, v in azurerm_container_app_job.container_app_jobs : v.template]
}
output "container_app_jobs_workload_profile_name" {
  description = "List of workload_profile_name values across all container_app_jobs"
  value       = [for k, v in azurerm_container_app_job.container_app_jobs : v.workload_profile_name]
}

