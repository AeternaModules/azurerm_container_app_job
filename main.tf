resource "azurerm_container_app_job" "container_app_jobs" {
  for_each = var.container_app_jobs

  container_app_environment_id = each.value.container_app_environment_id
  location                     = each.value.location
  name                         = each.value.name
  replica_timeout_in_seconds   = each.value.replica_timeout_in_seconds
  resource_group_name          = each.value.resource_group_name
  replica_retry_limit          = each.value.replica_retry_limit
  tags                         = each.value.tags
  workload_profile_name        = each.value.workload_profile_name

  template {
    dynamic "container" {
      for_each = each.value.template.container
      content {
        args    = container.value.args
        command = container.value.command
        cpu     = container.value.cpu
        dynamic "env" {
          for_each = container.value.env != null ? container.value.env : []
          content {
            name        = env.value.name
            secret_name = env.value.secret_name
            value       = env.value.value
          }
        }
        image = container.value.image
        dynamic "liveness_probe" {
          for_each = container.value.liveness_probe != null ? container.value.liveness_probe : []
          content {
            failure_count_threshold = liveness_probe.value.failure_count_threshold
            dynamic "header" {
              for_each = liveness_probe.value.header != null ? [liveness_probe.value.header] : []
              content {
                name  = header.value.name
                value = header.value.value
              }
            }
            host             = liveness_probe.value.host
            initial_delay    = liveness_probe.value.initial_delay
            interval_seconds = liveness_probe.value.interval_seconds
            path             = liveness_probe.value.path
            port             = liveness_probe.value.port
            timeout          = liveness_probe.value.timeout
            transport        = liveness_probe.value.transport
          }
        }
        memory = container.value.memory
        name   = container.value.name
        dynamic "readiness_probe" {
          for_each = container.value.readiness_probe != null ? container.value.readiness_probe : []
          content {
            failure_count_threshold = readiness_probe.value.failure_count_threshold
            dynamic "header" {
              for_each = readiness_probe.value.header != null ? [readiness_probe.value.header] : []
              content {
                name  = header.value.name
                value = header.value.value
              }
            }
            host                    = readiness_probe.value.host
            initial_delay           = readiness_probe.value.initial_delay
            interval_seconds        = readiness_probe.value.interval_seconds
            path                    = readiness_probe.value.path
            port                    = readiness_probe.value.port
            success_count_threshold = readiness_probe.value.success_count_threshold
            timeout                 = readiness_probe.value.timeout
            transport               = readiness_probe.value.transport
          }
        }
        dynamic "startup_probe" {
          for_each = container.value.startup_probe != null ? container.value.startup_probe : []
          content {
            failure_count_threshold = startup_probe.value.failure_count_threshold
            dynamic "header" {
              for_each = startup_probe.value.header != null ? [startup_probe.value.header] : []
              content {
                name  = header.value.name
                value = header.value.value
              }
            }
            host             = startup_probe.value.host
            initial_delay    = startup_probe.value.initial_delay
            interval_seconds = startup_probe.value.interval_seconds
            path             = startup_probe.value.path
            port             = startup_probe.value.port
            timeout          = startup_probe.value.timeout
            transport        = startup_probe.value.transport
          }
        }
        dynamic "volume_mounts" {
          for_each = container.value.volume_mounts != null ? [container.value.volume_mounts] : []
          content {
            name     = volume_mounts.value.name
            path     = volume_mounts.value.path
            sub_path = volume_mounts.value.sub_path
          }
        }
      }
    }
    dynamic "init_container" {
      for_each = each.value.template.init_container != null ? each.value.template.init_container : []
      content {
        args    = init_container.value.args
        command = init_container.value.command
        cpu     = init_container.value.cpu
        dynamic "env" {
          for_each = init_container.value.env != null ? init_container.value.env : []
          content {
            name        = env.value.name
            secret_name = env.value.secret_name
            value       = env.value.value
          }
        }
        image  = init_container.value.image
        memory = init_container.value.memory
        name   = init_container.value.name
        dynamic "volume_mounts" {
          for_each = init_container.value.volume_mounts != null ? [init_container.value.volume_mounts] : []
          content {
            name     = volume_mounts.value.name
            path     = volume_mounts.value.path
            sub_path = volume_mounts.value.sub_path
          }
        }
      }
    }
    dynamic "volume" {
      for_each = each.value.template.volume != null ? each.value.template.volume : []
      content {
        mount_options = volume.value.mount_options
        name          = volume.value.name
        storage_name  = volume.value.storage_name
        storage_type  = volume.value.storage_type
      }
    }
  }

  dynamic "event_trigger_config" {
    for_each = each.value.event_trigger_config != null ? [each.value.event_trigger_config] : []
    content {
      parallelism              = event_trigger_config.value.parallelism
      replica_completion_count = event_trigger_config.value.replica_completion_count
      dynamic "scale" {
        for_each = event_trigger_config.value.scale != null ? [event_trigger_config.value.scale] : []
        content {
          max_executions              = scale.value.max_executions
          min_executions              = scale.value.min_executions
          polling_interval_in_seconds = scale.value.polling_interval_in_seconds
          dynamic "rules" {
            for_each = scale.value.rules != null ? [scale.value.rules] : []
            content {
              dynamic "authentication" {
                for_each = rules.value.authentication != null ? rules.value.authentication : []
                content {
                  secret_name       = authentication.value.secret_name
                  trigger_parameter = authentication.value.trigger_parameter
                }
              }
              custom_rule_type = rules.value.custom_rule_type
              identity_id      = rules.value.identity_id
              metadata         = rules.value.metadata
              name             = rules.value.name
            }
          }
        }
      }
    }
  }

  dynamic "identity" {
    for_each = each.value.identity != null ? [each.value.identity] : []
    content {
      identity_ids = identity.value.identity_ids
      type         = identity.value.type
    }
  }

  dynamic "manual_trigger_config" {
    for_each = each.value.manual_trigger_config != null ? [each.value.manual_trigger_config] : []
    content {
      parallelism              = manual_trigger_config.value.parallelism
      replica_completion_count = manual_trigger_config.value.replica_completion_count
    }
  }

  dynamic "registry" {
    for_each = each.value.registry != null ? each.value.registry : []
    content {
      identity             = registry.value.identity
      password_secret_name = registry.value.password_secret_name
      server               = registry.value.server
      username             = registry.value.username
    }
  }

  dynamic "schedule_trigger_config" {
    for_each = each.value.schedule_trigger_config != null ? [each.value.schedule_trigger_config] : []
    content {
      cron_expression          = schedule_trigger_config.value.cron_expression
      parallelism              = schedule_trigger_config.value.parallelism
      replica_completion_count = schedule_trigger_config.value.replica_completion_count
    }
  }

  dynamic "secret" {
    for_each = each.value.secret != null ? [each.value.secret] : []
    content {
      identity            = secret.value.identity
      key_vault_secret_id = secret.value.key_vault_secret_id
      name                = secret.value.name
      value               = secret.value.value
    }
  }
}

