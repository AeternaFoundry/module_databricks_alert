variable "alerts" {
  description = <<EOT
Map of alerts, attributes below
Required:
    - display_name
    - query_id
    - condition (block):
        - empty_result_state (optional)
        - op (required)
        - operand (required, block):
            - column (required, block):
                - name (required)
        - threshold (optional, block):
            - value (required, block):
                - bool_value (optional)
                - double_value (optional)
                - string_value (optional)
Optional:
    - custom_body
    - custom_subject
    - notify_on_ok
    - owner_user_name
    - parent_path
    - seconds_to_retrigger
    - provider_config (block):
        - workspace_id (optional)
EOT

  type = map(object({
    display_name         = string
    query_id             = string
    custom_body          = optional(string)
    custom_subject       = optional(string)
    notify_on_ok         = optional(bool)
    owner_user_name      = optional(string)
    parent_path          = optional(string)
    seconds_to_retrigger = optional(number)
    condition = object({
      empty_result_state = optional(string)
      op                 = string
      operand = object({
        column = object({
          name = string
        })
      })
      threshold = optional(object({
        value = object({
          bool_value   = optional(bool)
          double_value = optional(number)
          string_value = optional(string)
        })
      }))
    })
    provider_config = optional(object({
      workspace_id = optional(string)
    }))
  }))
}

