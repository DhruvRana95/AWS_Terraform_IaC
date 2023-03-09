############################### SNS outputs ###############################

output "sns_id" {
  description = "AWS SNS ID value of the created resource."
  value       = module.sns_test.sns_id
}

output "sns_arn" {
  description = "AWS SNS ARN value of the created resource."
  value       = module.sns_test.sns_arn
}

############################### SQS outputs ###############################

output "sqs_id" {
  description = "AWS SQS ID value of the created resource."
  value       = module.sqs_test.sqs_id
}

output "sqs_arn" {
  description = "AWS SQS ARN value of the created resource."
  value       = module.sqs_test.sqs_arn
}