# module "sns_test" {
#   source                      = "../../modules/sns"
#   sns_name                    = var.sns_name
#   fifo_topic                  = var.fifo_topic
#   content_based_deduplication = var.content_based_deduplication
# }

# module "sqs_test" {
#   source                = "../../modules/sqs"
#   sqs_name              = var.sqs_name
#   fifo_queue            = var.fifo_queue
#   deduplication_scope   = var.deduplication_scope
#   fifo_throughput_limit = var.fifo_throughput_limit
# }

module "lambda" {
  source               = "../../modules/lambda/"
  region               = var.aws_region
  aws_account_id       = data.aws_caller_identity.current.account_id
  lambda_function_name = var.lambda_function_name
  lambda_description   = var.lambda_description
  lambda_handler       = var.lambda_handler
  lambda_timeout       = var.lambda_timeout
  lambda_memory_size   = var.lambda_memory_size

  s3_bucket_name = var.s3_bucket_name
  s3_key         = var.s3_key
  
  depends_on = [
    module.sl_bucket
  ]
}

module "sl_bucket" {
  source         = "../../modules/S3"
  bucket_name    = var.bucket_name
  acl            = var.acl
  s3_key         = var.s3_key
  aws_account_id = data.aws_caller_identity.current.account_id
}
