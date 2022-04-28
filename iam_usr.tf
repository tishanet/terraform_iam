module "iam_user1" {
  source = "terraform-aws-modules/iam/aws//modules/iam-user"

  name                    = "DevOps1"
  create_iam_access_key   = false
  force_destroy           = true
  password_reset_required = true
}

module "iam_user2" {
  source = "terraform-aws-modules/iam/aws//modules/iam-user"

  name                    = "DevOps2"
  create_iam_access_key   = false
  force_destroy           = true
  password_reset_required = true
}