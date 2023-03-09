############################### SNS variables ###############################

variable "sns_name" {
  description = "AWS SNS name."
  type        = string
}

variable "fifo_topic" {
  description = "AWS SNS FIFO enablement."
  type        = bool
}

variable "content_based_deduplication" {
  description = "AWS content based deduplication enablement."
  type        = bool
}