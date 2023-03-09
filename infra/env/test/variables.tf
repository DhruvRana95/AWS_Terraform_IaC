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
