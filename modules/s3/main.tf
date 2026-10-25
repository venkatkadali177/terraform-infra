locals {
  bucket_set = toset(var.bucket_names)
}

resource "aws_s3_bucket" "buckets" {
  for_each = local.bucket_set

  bucket = each.value

  tags = {
    Name = each.value
  }
}

resource "aws_s3_bucket_versioning" "versioning" {
  for_each = local.bucket_set

  bucket = aws_s3_bucket.buckets[each.key].id

  versioning_configuration {
    status = "Enabled"
  }
}