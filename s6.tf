resource "aws_s3_bucket" "data123456" {
  bucket        = "${local.resource_prefix.value}-data"
  acl           = "private"
  force_destroy = true
  tags = merge({
    Name        = "${local.resource_prefix.value}-data"
    Environment = local.resource_prefix.value
    }, {
    git_commit           = "d68d2897add9bc2203a5ed0632a5cdd8ff8cefb0"
    git_file             = "terraform/aws/s3.tf"
    git_last_modified_at = "2020-06-16 14:46:24"
    git_last_modified_by = "nimrodkor@gmail.com"
    git_modifiers        = "nimrodkor"
    git_org              = "bridgecrewio"
    git_repo             = "terragoat"
    yor_trace            = "0874007d-903a-4b4c-945f-c9c233e13243"
  })
}


resource "aws_s3_bucket" "data123456_log_bucket" {
  bucket = "data123456-log-bucket"
}

resource "aws_s3_bucket_logging" "data123456" {
  bucket = aws_s3_bucket.data123456.id

  target_bucket = aws_s3_bucket.data123456_log_bucket.id
  target_prefix = "log/"
}