module "s3_zdh_bucket" {
  source = "terraform-aws-modules/s3-bucket/aws"

  bucket              = var.s3_bucket_zdh
  acl                 = "private"
  block_public_acls   = true
  block_public_policy = true
  ignore_public_acls  = true
  versioning = {
    enabled = true
  }
  force_destroy = true
}