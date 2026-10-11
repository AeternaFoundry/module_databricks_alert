output "alerts_id" {
  description = "Map of id values across all alerts, keyed the same as var.alerts except keys with no id are omitted"
  value       = { for k, v in databricks_alert.alerts : k => v.id if v.id != null && length(v.id) > 0 }
}
output "alerts_condition" {
  description = "Map of condition values across all alerts, keyed the same as var.alerts except keys with no condition are omitted"
  value       = { for k, v in databricks_alert.alerts : k => one(v.condition) if v.condition != null && length(v.condition) > 0 }
}
output "alerts_create_time" {
  description = "Map of create_time values across all alerts, keyed the same as var.alerts except keys with no create_time are omitted"
  value       = { for k, v in databricks_alert.alerts : k => v.create_time if v.create_time != null && length(v.create_time) > 0 }
}
output "alerts_custom_body" {
  description = "Map of custom_body values across all alerts, keyed the same as var.alerts except keys with no custom_body are omitted"
  value       = { for k, v in databricks_alert.alerts : k => v.custom_body if v.custom_body != null && length(v.custom_body) > 0 }
}
output "alerts_custom_subject" {
  description = "Map of custom_subject values across all alerts, keyed the same as var.alerts except keys with no custom_subject are omitted"
  value       = { for k, v in databricks_alert.alerts : k => v.custom_subject if v.custom_subject != null && length(v.custom_subject) > 0 }
}
output "alerts_display_name" {
  description = "Map of display_name values across all alerts, keyed the same as var.alerts except keys with no display_name are omitted"
  value       = { for k, v in databricks_alert.alerts : k => v.display_name if v.display_name != null && length(v.display_name) > 0 }
}
output "alerts_lifecycle_state" {
  description = "Map of lifecycle_state values across all alerts, keyed the same as var.alerts except keys with no lifecycle_state are omitted"
  value       = { for k, v in databricks_alert.alerts : k => v.lifecycle_state if v.lifecycle_state != null && length(v.lifecycle_state) > 0 }
}
output "alerts_notify_on_ok" {
  description = "Map of notify_on_ok values across all alerts, keyed the same as var.alerts except keys with no notify_on_ok are omitted"
  value       = { for k, v in databricks_alert.alerts : k => v.notify_on_ok if v.notify_on_ok != null }
}
output "alerts_owner_user_name" {
  description = "Map of owner_user_name values across all alerts, keyed the same as var.alerts except keys with no owner_user_name are omitted"
  value       = { for k, v in databricks_alert.alerts : k => v.owner_user_name if v.owner_user_name != null && length(v.owner_user_name) > 0 }
}
output "alerts_parent_path" {
  description = "Map of parent_path values across all alerts, keyed the same as var.alerts except keys with no parent_path are omitted"
  value       = { for k, v in databricks_alert.alerts : k => v.parent_path if v.parent_path != null && length(v.parent_path) > 0 }
}
output "alerts_provider_config" {
  description = "Map of provider_config values across all alerts, keyed the same as var.alerts except keys with no provider_config are omitted"
  value       = { for k, v in databricks_alert.alerts : k => one(v.provider_config) if v.provider_config != null && length(v.provider_config) > 0 }
}
output "alerts_query_id" {
  description = "Map of query_id values across all alerts, keyed the same as var.alerts except keys with no query_id are omitted"
  value       = { for k, v in databricks_alert.alerts : k => v.query_id if v.query_id != null && length(v.query_id) > 0 }
}
output "alerts_seconds_to_retrigger" {
  description = "Map of seconds_to_retrigger values across all alerts, keyed the same as var.alerts except keys with no seconds_to_retrigger are omitted"
  value       = { for k, v in databricks_alert.alerts : k => v.seconds_to_retrigger if v.seconds_to_retrigger != null }
}
output "alerts_state" {
  description = "Map of state values across all alerts, keyed the same as var.alerts except keys with no state are omitted"
  value       = { for k, v in databricks_alert.alerts : k => v.state if v.state != null && length(v.state) > 0 }
}
output "alerts_trigger_time" {
  description = "Map of trigger_time values across all alerts, keyed the same as var.alerts except keys with no trigger_time are omitted"
  value       = { for k, v in databricks_alert.alerts : k => v.trigger_time if v.trigger_time != null && length(v.trigger_time) > 0 }
}
output "alerts_update_time" {
  description = "Map of update_time values across all alerts, keyed the same as var.alerts except keys with no update_time are omitted"
  value       = { for k, v in databricks_alert.alerts : k => v.update_time if v.update_time != null && length(v.update_time) > 0 }
}

