# ############################### SNS outputs ###############################

# output "sns_id" {
#   description = "AWS SNS ID value of the created resource."
#   value       = module.sns_test.sns_id
# }

# output "sns_arn" {
#   description = "AWS SNS ARN value of the created resource."
#   value       = module.sns_test.sns_arn
# }

# ############################### SQS outputs ###############################

# output "sqs_id" {
#   description = "AWS SQS ID value of the created resource."
#   value       = module.sqs_test.sqs_id
# }

# output "sqs_arn" {
#   description = "AWS SQS ARN value of the created resource."
#   value       = module.sqs_test.sqs_arn
# }

############################### Lambda Outputs ###############################

output "lambda_id" {
  description = "AWS Lambda Function ID Value."
  value       = module.lambda.lambda_id
}
output "lambda_function_name" {
  description = "AWS Lambda Function Name Value."
  value       = module.lambda.lambda_function_name
}
output "lambda_arn" {
  description = "AWS Lambda Function ARN Value."
  value       = module.lambda.lambda_arn
}
output "lambda_invoke_arn" {
  description = "AWS Lambda Function Invoke ARN Value."
  value       = module.lambda.lambda_invoke_arn
}
output "lambda_qualified_arn" {
  description = "AWS Lambda Function Qualifed ARN Value."
  value       = module.lambda.lambda_qualified_arn
}
output "lambda_handler" {
  description = "AWS Lambda Function Handler Value."
  value       = module.lambda.lambda_handler
}
output "lambda_last_modified" {
  description = "AWS Lambda Function Last Modified Value."
  value       = module.lambda.lambda_last_modified
}
output "lambda_runtime" {
  description = "AWS Lambda Function RunTime Value."
  value       = module.lambda.lambda_runtime
}
output "lambda_memory_size" {
  description = "AWS Lambda Function Memory Size Value."
  value       = module.lambda.lambda_memory_size
}
output "lambda_function_version" {
  description = "AWS Lambda Function version Value."
  value       = module.lambda.lambda_version
}
output "iam_role_name" {
  description = "AWS Lambda Function Role Name Value."
  value       = module.lambda.iam_role_name
}
output "iam_role_policy_name" {
  description = "AWS Lambda Function Policy Name Value."
  value       = module.lambda.iam_role_policy_name
}

############################### S3 Bucket Outputs ###############################

output "aws_s3_bucket_name" {
  description = "AWS S3 Bucket Name value."
  value       = module.sl_bucket.aws_s3_bucket_name
}

output "aws_s3_bucket_arn" {
  description = "AWS S3 Bucket ARN value."
  value       = module.sl_bucket.aws_s3_bucket_arn
}