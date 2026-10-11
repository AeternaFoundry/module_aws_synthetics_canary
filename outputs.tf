output "synthetics_canaries_id" {
  description = "Map of id values across all synthetics_canaries, keyed the same as var.synthetics_canaries"
  value       = { for k, v in aws_synthetics_canary.synthetics_canaries : k => v.id if v.id != null && length(v.id) > 0 }
}
output "synthetics_canaries_arn" {
  description = "Map of arn values across all synthetics_canaries, keyed the same as var.synthetics_canaries"
  value       = { for k, v in aws_synthetics_canary.synthetics_canaries : k => v.arn if v.arn != null && length(v.arn) > 0 }
}
output "synthetics_canaries_artifact_config" {
  description = "Map of artifact_config values across all synthetics_canaries, keyed the same as var.synthetics_canaries"
  value       = { for k, v in aws_synthetics_canary.synthetics_canaries : k => one(v.artifact_config) if v.artifact_config != null && length(v.artifact_config) > 0 }
}
output "synthetics_canaries_artifact_s3_location" {
  description = "Map of artifact_s3_location values across all synthetics_canaries, keyed the same as var.synthetics_canaries"
  value       = { for k, v in aws_synthetics_canary.synthetics_canaries : k => v.artifact_s3_location if v.artifact_s3_location != null && length(v.artifact_s3_location) > 0 }
}
output "synthetics_canaries_delete_lambda" {
  description = "Map of delete_lambda values across all synthetics_canaries, keyed the same as var.synthetics_canaries"
  value       = { for k, v in aws_synthetics_canary.synthetics_canaries : k => v.delete_lambda if v.delete_lambda != null }
}
output "synthetics_canaries_engine_arn" {
  description = "Map of engine_arn values across all synthetics_canaries, keyed the same as var.synthetics_canaries"
  value       = { for k, v in aws_synthetics_canary.synthetics_canaries : k => v.engine_arn if v.engine_arn != null && length(v.engine_arn) > 0 }
}
output "synthetics_canaries_execution_role_arn" {
  description = "Map of execution_role_arn values across all synthetics_canaries, keyed the same as var.synthetics_canaries"
  value       = { for k, v in aws_synthetics_canary.synthetics_canaries : k => v.execution_role_arn if v.execution_role_arn != null && length(v.execution_role_arn) > 0 }
}
output "synthetics_canaries_failure_retention_period" {
  description = "Map of failure_retention_period values across all synthetics_canaries, keyed the same as var.synthetics_canaries"
  value       = { for k, v in aws_synthetics_canary.synthetics_canaries : k => v.failure_retention_period if v.failure_retention_period != null }
}
output "synthetics_canaries_handler" {
  description = "Map of handler values across all synthetics_canaries, keyed the same as var.synthetics_canaries"
  value       = { for k, v in aws_synthetics_canary.synthetics_canaries : k => v.handler if v.handler != null && length(v.handler) > 0 }
}
output "synthetics_canaries_name" {
  description = "Map of name values across all synthetics_canaries, keyed the same as var.synthetics_canaries"
  value       = { for k, v in aws_synthetics_canary.synthetics_canaries : k => v.name if v.name != null && length(v.name) > 0 }
}
output "synthetics_canaries_region" {
  description = "Map of region values across all synthetics_canaries, keyed the same as var.synthetics_canaries"
  value       = { for k, v in aws_synthetics_canary.synthetics_canaries : k => v.region if v.region != null && length(v.region) > 0 }
}
output "synthetics_canaries_run_config" {
  description = "Map of run_config values across all synthetics_canaries, keyed the same as var.synthetics_canaries"
  value       = { for k, v in aws_synthetics_canary.synthetics_canaries : k => one(v.run_config) if v.run_config != null && length(v.run_config) > 0 }
}
output "synthetics_canaries_runtime_version" {
  description = "Map of runtime_version values across all synthetics_canaries, keyed the same as var.synthetics_canaries"
  value       = { for k, v in aws_synthetics_canary.synthetics_canaries : k => v.runtime_version if v.runtime_version != null && length(v.runtime_version) > 0 }
}
output "synthetics_canaries_s3_bucket" {
  description = "Map of s3_bucket values across all synthetics_canaries, keyed the same as var.synthetics_canaries"
  value       = { for k, v in aws_synthetics_canary.synthetics_canaries : k => v.s3_bucket if v.s3_bucket != null && length(v.s3_bucket) > 0 }
}
output "synthetics_canaries_s3_key" {
  description = "Map of s3_key values across all synthetics_canaries, keyed the same as var.synthetics_canaries"
  value       = { for k, v in aws_synthetics_canary.synthetics_canaries : k => v.s3_key if v.s3_key != null && length(v.s3_key) > 0 }
}
output "synthetics_canaries_s3_version" {
  description = "Map of s3_version values across all synthetics_canaries, keyed the same as var.synthetics_canaries"
  value       = { for k, v in aws_synthetics_canary.synthetics_canaries : k => v.s3_version if v.s3_version != null && length(v.s3_version) > 0 }
}
output "synthetics_canaries_schedule" {
  description = "Map of schedule values across all synthetics_canaries, keyed the same as var.synthetics_canaries"
  value       = { for k, v in aws_synthetics_canary.synthetics_canaries : k => one(v.schedule) if v.schedule != null && length(v.schedule) > 0 }
}
output "synthetics_canaries_source_location_arn" {
  description = "Map of source_location_arn values across all synthetics_canaries, keyed the same as var.synthetics_canaries"
  value       = { for k, v in aws_synthetics_canary.synthetics_canaries : k => v.source_location_arn if v.source_location_arn != null && length(v.source_location_arn) > 0 }
}
output "synthetics_canaries_start_canary" {
  description = "Map of start_canary values across all synthetics_canaries, keyed the same as var.synthetics_canaries"
  value       = { for k, v in aws_synthetics_canary.synthetics_canaries : k => v.start_canary if v.start_canary != null }
}
output "synthetics_canaries_status" {
  description = "Map of status values across all synthetics_canaries, keyed the same as var.synthetics_canaries"
  value       = { for k, v in aws_synthetics_canary.synthetics_canaries : k => v.status if v.status != null && length(v.status) > 0 }
}
output "synthetics_canaries_success_retention_period" {
  description = "Map of success_retention_period values across all synthetics_canaries, keyed the same as var.synthetics_canaries"
  value       = { for k, v in aws_synthetics_canary.synthetics_canaries : k => v.success_retention_period if v.success_retention_period != null }
}
output "synthetics_canaries_tags" {
  description = "Map of tags values across all synthetics_canaries, keyed the same as var.synthetics_canaries"
  value       = { for k, v in aws_synthetics_canary.synthetics_canaries : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "synthetics_canaries_tags_all" {
  description = "Map of tags_all values across all synthetics_canaries, keyed the same as var.synthetics_canaries"
  value       = { for k, v in aws_synthetics_canary.synthetics_canaries : k => v.tags_all if v.tags_all != null && length(v.tags_all) > 0 }
}
output "synthetics_canaries_timeline" {
  description = "Map of timeline values across all synthetics_canaries, keyed the same as var.synthetics_canaries"
  value       = { for k, v in aws_synthetics_canary.synthetics_canaries : k => v.timeline if v.timeline != null && length(v.timeline) > 0 }
}
output "synthetics_canaries_vpc_config" {
  description = "Map of vpc_config values across all synthetics_canaries, keyed the same as var.synthetics_canaries"
  value       = { for k, v in aws_synthetics_canary.synthetics_canaries : k => one(v.vpc_config) if v.vpc_config != null && length(v.vpc_config) > 0 }
}
output "synthetics_canaries_zip_file" {
  description = "Map of zip_file values across all synthetics_canaries, keyed the same as var.synthetics_canaries"
  value       = { for k, v in aws_synthetics_canary.synthetics_canaries : k => v.zip_file if v.zip_file != null && length(v.zip_file) > 0 }
}

