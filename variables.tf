variable "synthetics_canaries" {
  description = <<EOT
Map of synthetics_canaries, attributes below
Required:
    - artifact_s3_location
    - execution_role_arn
    - handler
    - name
    - runtime_version
    - schedule (block):
        - duration_in_seconds (optional)
        - expression (required)
        - retry_config (optional, block):
            - max_retries (required)
Optional:
    - delete_lambda
    - failure_retention_period
    - region
    - s3_bucket
    - s3_key
    - s3_version
    - start_canary
    - success_retention_period
    - tags
    - tags_all
    - zip_file
    - artifact_config (block):
        - s3_encryption (optional, block):
            - encryption_mode (optional)
            - kms_key_arn (optional)
    - run_config (block):
        - active_tracing (optional)
        - environment_variables (optional)
        - ephemeral_storage (optional)
        - memory_in_mb (optional)
        - timeout_in_seconds (optional)
    - vpc_config (block):
        - ipv6_allowed_for_dual_stack (optional)
        - security_group_ids (optional)
        - subnet_ids (optional)
EOT

  type = map(object({
    artifact_s3_location     = string
    execution_role_arn       = string
    handler                  = string
    name                     = string
    runtime_version          = string
    delete_lambda            = optional(bool)
    failure_retention_period = optional(number)
    region                   = optional(string)
    s3_bucket                = optional(string)
    s3_key                   = optional(string)
    s3_version               = optional(string)
    start_canary             = optional(bool)
    success_retention_period = optional(number)
    tags                     = optional(map(string))
    tags_all                 = optional(map(string))
    zip_file                 = optional(string)
    schedule = object({
      duration_in_seconds = optional(number)
      expression          = string
      retry_config = optional(object({
        max_retries = number
      }))
    })
    artifact_config = optional(object({
      s3_encryption = optional(object({
        encryption_mode = optional(string)
        kms_key_arn     = optional(string)
      }))
    }))
    run_config = optional(object({
      active_tracing        = optional(bool)
      environment_variables = optional(map(string))
      ephemeral_storage     = optional(number)
      memory_in_mb          = optional(number)
      timeout_in_seconds    = optional(number)
    }))
    vpc_config = optional(object({
      ipv6_allowed_for_dual_stack = optional(bool)
      security_group_ids          = optional(set(string))
      subnet_ids                  = optional(set(string))
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.synthetics_canaries : (
        v.failure_retention_period == null || (v.failure_retention_period >= 1 && v.failure_retention_period <= 455)
      )
    ])
    error_message = "must be between 1 and 455"
  }
  validation {
    condition = alltrue([
      for k, v in var.synthetics_canaries : (
        v.run_config == null || (v.run_config.ephemeral_storage == null || (v.run_config.ephemeral_storage >= 1024 && v.run_config.ephemeral_storage <= 5120))
      )
    ])
    error_message = "must be between 1024 and 5120"
  }
  validation {
    condition = alltrue([
      for k, v in var.synthetics_canaries : (
        v.run_config == null || (v.run_config.memory_in_mb == null || (((v.run_config.memory_in_mb % 64) == 0) && (v.run_config.memory_in_mb >= 960)))
      )
    ])
    error_message = "all of: must be divisible by 64; must be at least 960"
  }
  validation {
    condition = alltrue([
      for k, v in var.synthetics_canaries : (
        v.success_retention_period == null || (v.success_retention_period >= 1 && v.success_retention_period <= 455)
      )
    ])
    error_message = "must be between 1 and 455"
  }
  # Note: 6 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

