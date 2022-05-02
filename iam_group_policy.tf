module "iam_group_with_custom_policies" {
  source = "terraform-aws-modules/iam/aws//modules/iam-group-with-policies"

  name = "DevOps-EC2-S3"

  group_users = [
    module.iam_user1.iam_user_name,
    module.iam_user2.iam_user_name,
  ]
  custom_group_policy_arns = [module.iam_policy.arn]
}