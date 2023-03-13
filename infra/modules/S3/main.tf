resource "aws_s3_bucket" "sl_bucket" {
  count         = "${length(var.bucket_name)}"
  bucket        = "${element(var.bucket_name, count.index)}"
  acl           = var.acl
 
 tags = {
    usage       = "AWS S3 bucket for  data storage and artifact storage."
    environment = "test"
  }

}