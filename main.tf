provider "aws" {
  region = "eu-west-1"
}

data "aws_caller_identity" "current" {}

##########################################
# IAM assumable role with custom policies
##########################################
module "iam_assumable_role_custom" {
  source = "terraform-aws-modules/iam/aws//modules/iam-assumable-role"

  trusted_role_arns = [
    "*",
  ]
  create_role = true

  role_name         = "${var.assumable_prefixname}-role"
  role_requires_mfa = false

}

module "iam_assumable_policy_custom" {
  source = "terraform-aws-modules/iam/aws//modules/iam-policy" 
  name        = "${var.assumable_prefixname}-policy"
  description = "{var.assumable_prefixname} policy"

  policy = <<EOT
{
    "Version": "2012-10-17",
    "Statement": {
        "Effect": "Allow",
        "Action": "sts:AssumeRole",
        "Resource": "arn:aws:iam::${data.aws_caller_identity.current.account_id}:role/${var.assumable_prefixname}-role"
    }
}
EOT
}

module "iam_assumable_user_custom" {
  source = "terraform-aws-modules/iam/aws//modules/iam-user"

  name = "${var.assumable_prefixname}-user"

  create_iam_user_login_profile = false
  create_iam_access_key         = false
}

module "iam_assumable_group_custom" {
  source = "terraform-aws-modules/iam/aws//modules/iam-group-with-policies" 
  name = "${var.assumable_prefixname}-group"
  group_users = [
    module.iam_assumable_user_custom.iam_user_name,
  ]
   custom_group_policy_arns = [
    module.iam_assumable_policy_custom.arn,
  ]
}

/*
resource "aws_iam_group_policy_attachment" "custom_policy" {
  group      = "${aws_iam_group.prod-ci-group.name}"
  policy_arn = "${aws_iam_policy.policy.arn}"
}

resource "aws_iam_user" "prod-ci-user" {
  name = "prod-ci-user"
}

resource "aws_iam_user_group_membership" "group_membership" {
  user = "${aws_iam_user.prod-ci-user.name}"
  groups      = [
    "${aws_iam_group.prod-ci-group.name}",
  ]
}
*/
