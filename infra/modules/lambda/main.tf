resource "aws_lambda_function" "lambda" {
  function_name = var.lambda_function_name
  description   = var.lambda_description

  s3_bucket = var.s3_bucket_name
  s3_key    = var.s3_key
  handler   = var.lambda_handler
  runtime   = var.lambda_runtime

  role = aws_iam_role.lambda_execution_role.arn

  timeout     = var.lambda_timeout
  memory_size = var.lambda_memory_size

  publish = var.publish == "yes" ? true : false

  tags = {
    usage       = "AWS Lambda for Contact-us data storage processing."
    environment = "test"
  }
}
