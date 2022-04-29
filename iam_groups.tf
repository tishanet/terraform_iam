module "iam_group_complete" {
  source = "terraform-aws-modules/iam/aws//modules/iam-group-with-assumable-roles-policy"

  name = "DevOps-EC2-S3"

  group_users = [
    module.iam_user1.iam_user_name,
    module.iam_user2.iam_user_name,
  ]
}

resource "aws_iam_policy_attachment" "attachment_s3" {
  name       = "policy_attachment"
  groups     = module.iam_group_complete.group_name
  policy_arn = module.iam_policy.arn
}