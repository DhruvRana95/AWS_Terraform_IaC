output "sns_id" {
  description = "AWS SNS ID value of the created resource."
  value       = aws_sns_topic.user_updates.id
}

output "sns_arn" {
  description = "AWS SNS ARN value of the created resource."
  value       = aws_sns_topic.user_updates.arn
}