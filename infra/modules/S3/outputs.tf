output "aws_s3_bucket_name" {
  description = "AWS S3 Bucket Name value."
  value       = aws_s3_bucket.sl_bucket[0].bucket
}

output "aws_s3_bucket_arn" {
  description = "AWS S3 Bucket ARN value."
  value       = aws_s3_bucket.sl_bucket[0].arn
}