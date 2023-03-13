############################### Generic variables ###############################

variable "aws_profile" {
  description = "AWS profile name."
  default     = "terraform-test"
  type        = string
}

variable "aws_region" {
  description = "AWS region name."
  default     = "ap-south-1"
  type        = string
}

############################### SNS variables ###############################

variable "sns_name" {
  description = "AWS SNS name."
  default     = "user-updates-topic.fifo"
  type        = string
}

variable "fifo_topic" {
  description = "AWS SNS FIFO enablement."
  default     = true
  type        = bool
}

variable "content_based_deduplication" {
  description = "AWS content based deduplication enablement."
  default     = true
  type        = bool
}

############################### SQS variables ###############################

variable "sqs_name" {
  description = "AWS SQS name."
  default     = "terraform-example-queue.fifo"
  type        = string
}

variable "fifo_queue" {
  description = "AWS SQS FIFO enablement."
  default     = true
  type        = bool
}

variable "deduplication_scope" {
  description = "AWS SQS based deduplication enablement."
  default     = "messageGroup"
  type        = string
}

variable "fifo_throughput_limit" {
  description = "AWS SQS based throughput limit."
  default     = "perMessageGroupId"
  type        = string
}

############################### AWS Lambda ###############################

variable "lambda_function_name" {
  default     = "tf-sl-lambda"
  type        = string
  description = "AWS Lambda Function name value."
}

variable "lambda_description" {
  default     = "AWS Lambda to sl-description."
  type        = string
  description = "AWS  Lambda Description."
}

variable "lambda_handler" {
  default     = "lambda_function.lambda_handler"
  type        = string
  description = "AWS Lambda handler value."
}

variable "lambda_timeout" {
  default     = 30
  type        = number
  description = "AWS Lambda Timeout value."
}

variable "lambda_memory_size" {
  default     = 128
  type        = number
  description = "AWS Lambda Memory size value."
}

############################### Lambda S3 BUCKET ###############################

variable "s3_bucket_name" {
  default     = "sl-artifact-storage-v1"
  type        = string
  description = "AWS S3 Bucket name value."
}
variable "s3_key" {
  default     = "lambda-artifacts.zip"
  type        = string
  description = "AWS S3 Bucket Key value."
}

############################### S3 Bucket ###############################

variable "bucket_name" {
  default = ["sl-static-site-v1", "sl-artifact-storage-v1"]
  type    = list(any)
}

variable "acl" {
  description = "AWS S3 Bucket type value"
  default     = "private"
  type        = string
}
