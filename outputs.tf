output "arn" {
  value = aws_cloudwatch_metric_alarm.alarm.arn
}

output "health_check_id" {
  value = aws_cloudwatch_metric_alarm.alarm.id
}
