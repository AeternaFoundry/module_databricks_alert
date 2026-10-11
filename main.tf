resource "databricks_alert" "alerts" {
  for_each = var.alerts

  display_name         = each.value.display_name
  query_id             = each.value.query_id
  custom_body          = each.value.custom_body
  custom_subject       = each.value.custom_subject
  notify_on_ok         = each.value.notify_on_ok
  owner_user_name      = each.value.owner_user_name
  parent_path          = each.value.parent_path
  seconds_to_retrigger = each.value.seconds_to_retrigger

  condition {
    empty_result_state = each.value.condition.empty_result_state
    op                 = each.value.condition.op
    operand {
      column {
        name = each.value.condition.operand.column.name
      }
    }
    dynamic "threshold" {
      for_each = each.value.condition.threshold != null ? [each.value.condition.threshold] : []
      content {
        value {
          bool_value   = threshold.value.value.bool_value
          double_value = threshold.value.value.double_value
          string_value = threshold.value.value.string_value
        }
      }
    }
  }

  dynamic "provider_config" {
    for_each = each.value.provider_config != null ? [each.value.provider_config] : []
    content {
      workspace_id = provider_config.value.workspace_id
    }
  }
}

