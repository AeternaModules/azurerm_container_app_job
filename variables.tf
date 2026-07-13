variable "container_app_jobs" {
  description = <<EOT
Map of container_app_jobs, attributes below
Required:
    - container_app_environment_id
    - location
    - name
    - replica_timeout_in_seconds
    - resource_group_name
    - template (block):
        - container (required, block):
            - args (optional)
            - command (optional)
            - cpu (required)
            - env (optional, block):
                - name (required)
                - secret_name (optional)
                - value (optional)
            - image (required)
            - liveness_probe (optional, block):
                - failure_count_threshold (optional)
                - header (optional, block):
                    - name (required)
                    - value (required)
                - host (optional)
                - initial_delay (optional)
                - interval_seconds (optional)
                - path (optional)
                - port (required)
                - timeout (optional)
                - transport (required)
            - memory (required)
            - name (required)
            - readiness_probe (optional, block):
                - failure_count_threshold (optional)
                - header (optional, block):
                    - name (required)
                    - value (required)
                - host (optional)
                - initial_delay (optional)
                - interval_seconds (optional)
                - path (optional)
                - port (required)
                - success_count_threshold (optional)
                - timeout (optional)
                - transport (required)
            - startup_probe (optional, block):
                - failure_count_threshold (optional)
                - header (optional, block):
                    - name (required)
                    - value (required)
                - host (optional)
                - initial_delay (optional)
                - interval_seconds (optional)
                - path (optional)
                - port (required)
                - timeout (optional)
                - transport (required)
            - volume_mounts (optional, block):
                - name (required)
                - path (required)
                - sub_path (optional)
        - init_container (optional, block):
            - args (optional)
            - command (optional)
            - cpu (optional)
            - env (optional, block):
                - name (required)
                - secret_name (optional)
                - value (optional)
            - image (required)
            - memory (optional)
            - name (required)
            - volume_mounts (optional, block):
                - name (required)
                - path (required)
                - sub_path (optional)
        - volume (optional, block):
            - mount_options (optional)
            - name (required)
            - storage_name (optional)
            - storage_type (optional)
Optional:
    - replica_retry_limit
    - tags
    - workload_profile_name
    - event_trigger_config (block):
        - parallelism (optional)
        - replica_completion_count (optional)
        - scale (optional, block):
            - max_executions (optional)
            - min_executions (optional)
            - polling_interval_in_seconds (optional)
            - rules (optional, block):
                - authentication (optional, block):
                    - secret_name (required)
                    - trigger_parameter (required)
                - custom_rule_type (required)
                - identity_id (optional)
                - metadata (required)
                - name (required)
    - identity (block):
        - identity_ids (optional)
        - type (required)
    - manual_trigger_config (block):
        - parallelism (optional)
        - replica_completion_count (optional)
    - registry (block):
        - identity (optional)
        - password_secret_name (optional)
        - server (required)
        - username (optional)
    - schedule_trigger_config (block):
        - cron_expression (required)
        - parallelism (optional)
        - replica_completion_count (optional)
    - secret (block):
        - identity (optional)
        - key_vault_secret_id (optional)
        - name (required)
        - value (optional)
EOT

  type = map(object({
    container_app_environment_id = string
    location                     = string
    name                         = string
    replica_timeout_in_seconds   = number
    resource_group_name          = string
    replica_retry_limit          = optional(number)
    tags                         = optional(map(string))
    workload_profile_name        = optional(string)
    template = object({
      container = list(object({
        args    = optional(list(string))
        command = optional(list(string))
        cpu     = number
        env = optional(list(object({
          name        = string
          secret_name = optional(string)
          value       = optional(string)
        })))
        image = string
        liveness_probe = optional(list(object({
          failure_count_threshold = optional(number)
          header = optional(list(object({
            name  = string
            value = string
          })))
          host             = optional(string)
          initial_delay    = optional(number)
          interval_seconds = optional(number)
          path             = optional(string)
          port             = number
          timeout          = optional(number)
          transport        = string
        })))
        memory = string
        name   = string
        readiness_probe = optional(list(object({
          failure_count_threshold = optional(number)
          header = optional(list(object({
            name  = string
            value = string
          })))
          host                    = optional(string)
          initial_delay           = optional(number)
          interval_seconds        = optional(number)
          path                    = optional(string)
          port                    = number
          success_count_threshold = optional(number)
          timeout                 = optional(number)
          transport               = string
        })))
        startup_probe = optional(list(object({
          failure_count_threshold = optional(number)
          header = optional(list(object({
            name  = string
            value = string
          })))
          host             = optional(string)
          initial_delay    = optional(number)
          interval_seconds = optional(number)
          path             = optional(string)
          port             = number
          timeout          = optional(number)
          transport        = string
        })))
        volume_mounts = optional(list(object({
          name     = string
          path     = string
          sub_path = optional(string)
        })))
      }))
      init_container = optional(list(object({
        args    = optional(list(string))
        command = optional(list(string))
        cpu     = optional(number)
        env = optional(list(object({
          name        = string
          secret_name = optional(string)
          value       = optional(string)
        })))
        image  = string
        memory = optional(string)
        name   = string
        volume_mounts = optional(list(object({
          name     = string
          path     = string
          sub_path = optional(string)
        })))
      })))
      volume = optional(list(object({
        mount_options = optional(string)
        name          = string
        storage_name  = optional(string)
        storage_type  = optional(string)
      })))
    })
    event_trigger_config = optional(object({
      parallelism              = optional(number)
      replica_completion_count = optional(number)
      scale = optional(list(object({
        max_executions              = optional(number)
        min_executions              = optional(number)
        polling_interval_in_seconds = optional(number)
        rules = optional(list(object({
          authentication = optional(list(object({
            secret_name       = string
            trigger_parameter = string
          })))
          custom_rule_type = string
          identity_id      = optional(string)
          metadata         = map(string)
          name             = string
        })))
      })))
    }))
    identity = optional(object({
      identity_ids = optional(set(string))
      type         = string
    }))
    manual_trigger_config = optional(object({
      parallelism              = optional(number)
      replica_completion_count = optional(number)
    }))
    registry = optional(list(object({
      identity             = optional(string)
      password_secret_name = optional(string)
      server               = string
      username             = optional(string)
    })))
    schedule_trigger_config = optional(object({
      cron_expression          = string
      parallelism              = optional(number)
      replica_completion_count = optional(number)
    }))
    secret = optional(list(object({
      identity            = optional(string)
      key_vault_secret_id = optional(string)
      name                = string
      value               = optional(string)
    })))
  }))
  validation {
    condition = alltrue([
      for k, v in var.container_app_jobs : (
        length(v.template.container) >= 1
      )
    ])
    error_message = "Each container list must contain at least 1 items"
  }
}

