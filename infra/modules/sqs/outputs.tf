output "sqs_id" {
  description = "AWS SQS ID value of the created resource."
  value       = aws_sqs_queue.terraform_queue.id
}

output "sqs_arn" {
  description = "AWS SQS ARN value of the created resource."
  value       = aws_sqs_queue.terraform_queue.arn
}