resource "aws_s3_bucket" "sl_bucket" {
  count         = "${length(var.bucket_name)}"
  bucket        = "${element(var.bucket_name, count.index)}"
  acl           = var.acl
 
 tags = {
    usage       = "AWS S3 bucket for  data storage and artifact storage."
    environment = "test"
  }
}

resource "aws_s3_object" "object" {
  bucket = var.bucket_name[1]
  key    = var.s3_key
  source = "../../../src/${var.s3_key}"

  # The filemd5() function is available in Terraform 0.11.12 and later
  # For Terraform 0.11.11 and earlier, use the md5() function and the file() function:
  # etag = "${md5(file("path/to/file"))}"
  etag = filemd5("../../../src/${var.s3_key}")
  depends_on = [
    aws_s3_bucket.sl_bucket
  ]
}