module "iam_policy" {
  source      = "terraform-aws-modules/iam/aws//modules/iam-policy"
  name        = "EC2_S3"
  path        = "/"
  description = "My EC2_S3 policy"

  policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Action": [
        "ec2:Describe*"
        "ec2:CreateTags"
        "ec2:CreateVolume"
        "ec2:DeleteVolume"
        "ec2:AttachVolume"
        "ec2:DetachVolume"
        "s3:CreateBucket"
        "s3:DeleteBucket"
        "s3:ListBucket"
        "s3:PutObject"
        "s3:GetObject"
        "s3:DeleteObject"
      ],
      "Effect": "Allow",
      "Resource": "*"
    }
  ]
}
EOF
}