variable "AWS_ACCESS_KEY_ID" {
  type = string
}

variable "AWS_SECRET_ACCESS_KEY" {
  type = string
}

variable "AWS_SESSION_TOKEN" {
  type    = string
  default = null
}

variable "AWS_REGION" {
  type = string
}

variable "alarm_name" {
  type        = string
  description = "(Required) The descriptive name for the alarm. This name must be unique within the user's AWS account"
}

variable "comparison_operator" {
  type        = string
  default     = "GreaterThanOrEqualToThreshold"
  description = "(Required) The arithmetic operation to use when comparing the specified Statistic and Threshold. The specified Statistic value is used as the first operand. Either of the following is supported: GreaterThanOrEqualToThreshold, GreaterThanThreshold, LessThanThreshold, LessThanOrEqualToThreshold. Additionally, the values LessThanLowerOrGreaterThanUpperThreshold, LessThanLowerThreshold, and GreaterThanUpperThreshold are used only for alarms based on anomaly detection models."
}

variable "evaluation_periods" {
  type        = number
  default     = 2
  description = "(Required) The number of periods over which data is compared to the specified threshold."
}

variable "metric_name" {
  type        = string
  description = "(Optional) The name for the alarm's associated metric."
}

variable "namespace" {
  type        = string
  description = "(Optional) The namespace for the alarm's associated metric."
}

variable "period" {
  type        = number
  default     = 120
  description = "(Optional) The period in seconds over which the specified statistic is applied. Valid values are 10, 30, or any multiple of 60."
}

variable "statistic" {
  type        = string
  default     = "Average"
  description = "(Optional) The statistic to apply to the alarm's associated metric. Either of the following is supported: SampleCount, Average, Sum, Minimum, Maximum"
}

variable "threshold" {
  type        = number
  default     = 80
  description = "(Optional) The value against which the specified statistic is compared. This parameter is required for alarms based on static thresholds, but should not be used for alarms based on anomaly detection models."
}

variable "asg_name" {
  type        = string
  description = "(Optional) The name of the autoscaling group."
}

variable "alarm_description" {
  type        = string
  description = "(Optional) The description for the alarm."
}

variable "alarm_actions" {
  type        = list(string)
  description = "(Optional) The list of actions to execute when this alarm transitions into an ALARM state from any other state. Each action is specified as an Amazon Resource Name (ARN)."
}
