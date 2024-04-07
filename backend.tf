terraform {
  backend "s3" {
    bucket = var.S3_BUCKET_NAME
    key    = var.S3_KEY
    region = var.AWS_REGION
  }
}
