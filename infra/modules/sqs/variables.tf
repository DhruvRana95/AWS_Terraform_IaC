############################### SQS variables ###############################

variable "sqs_name" {
  description = "AWS SQS name."
  type        = string
}

variable "fifo_queue" {
  description = "AWS SQS FIFO enablement."
  type        = bool
}

variable "deduplication_scope" {
  description = "AWS SQS based deduplication enablement."
  type        = string
}

variable "fifo_throughput_limit" {
  description = "AWS SQS based throughput limit."
  type        = string
}