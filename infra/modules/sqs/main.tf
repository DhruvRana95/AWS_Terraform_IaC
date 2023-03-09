resource "aws_sqs_queue" "terraform_queue" {
  name                  = var.sqs_name
  fifo_queue            = var.fifo_queue
  deduplication_scope   = var.deduplication_scope
  fifo_throughput_limit = var.fifo_throughput_limit
}