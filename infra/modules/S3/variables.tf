# *************************************** S3 Bucket ***************************************
variable "bucket_name" {
  type = list(any)
}

variable "acl" {
  description = "AWS S3 Bucket type value"
  type        = string
}

variable "aws_account_id" {
    description = "AWS Account ID."
  
}