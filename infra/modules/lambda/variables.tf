variable "region" {
  description = "The region into which to deploy the Lambda."
  type        = string
}

variable "aws_account_id" {
  description = "AWS Account ID."
}

#************************************************ Lambda S3 Bucket ************************************************

variable "s3_bucket_name" {
  description = "AWS S3 Bucket name value."
  type        = string
}

variable "s3_key" {
  description = "AWS S3 Bucket Key value."
  type        = string
}

#*********************************************** Lambda Congiguration ***********************************************

variable "lambda_function_name" {
  default     = "tf-sl-lambda"
  type        = string
  description = "AWS Lambda Function name value."
}

variable "lambda_description" {
  default     = "AWS Lambda to sl-description."
  type        = string
  description = "AWS Lambda Description."
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

variable "lambda_runtime" {
  description = "The runtime to use for the lambda function"
  type        = string
  default     = "python3.7"
}

variable "lambda_reserved_concurrent_executions" {
  description = "Amount of reserved concurrent executions for this lambda function"
  default     = -1
}

variable "lambda_execution_policy" {
  description = "The inline AWS execution policy to use for the lambda"
  type        = string
  default     = ""
}

variable "lambda_assume_role" {
  description = "An inline AWS role policy which the lambda should assume during execution"
  type        = string
  default     = ""
}

variable "lambda_environment_variables" {
  description = "Environment variables to be provided to the lambda function."
  type        = map(string)
  default     = null
}

variable "tags" {
  description = "AWS tags to use on created infrastructure components"
  type        = map(string)
  default     = {}
}

#*********************************************** Deployment Options ***********************************************

variable "deploy_in_vpc" {
  description = "Whether or not to deploy the lambda into a VPC (\"yes\" or \"no\")."
  type        = string
  default     = "yes"
}

variable "publish" {
  description = "Whether or not to publish creation / change as a new lambda function version (\"yes\" or \"no\")."
  type        = string
  default     = "no"
}

#********************************************* VPC Deployment Settings **********************************************

variable "vpc_id" {
  description = "The ID of the VPC into which to deploy the lambda."
  type        = string
  default     = ""
}

variable "lambda_subnet_ids" {
  description = "The IDs of the subnets for the lambda"
  type        = list(string)
  default     = []
}

variable "lambda_ingress_cidr_blocks" {
  description = "The ingress CIDR ranges to allow access"
  type        = list(string)
  default     = []
}

variable "lambda_egress_cidr_blocks" {
  description = "The egress CIDR ranges to allow access"
  type        = list(string)
  default     = []
}
