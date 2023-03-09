module "sns_test" {
  source                      = "../../modules/sns"
  sns_name                    = var.sns_name
  fifo_topic                  = var.fifo_topic
  content_based_deduplication = var.content_based_deduplication
}

module "sqs_test" {
  source                = "../../modules/sqs"
  sqs_name              = var.sqs_name
  fifo_queue            = var.fifo_queue
  deduplication_scope   = var.deduplication_scope
  fifo_throughput_limit = var.fifo_throughput_limit
}
