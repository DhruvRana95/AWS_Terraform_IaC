resource "aws_sns_topic" "user_updates" {
  name                        = var.sns_name
  fifo_topic                  = var.fifo_topic
  content_based_deduplication = var.content_based_deduplication
}