#Create the IAM Role
resource "aws_iam_role" "gitlab_ci" {
  name               = var.role_name
  assume_role_policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Principal": {
        "Federated": "arn:aws:iam::${data.aws_caller_identity.current.account_id}:oidc-provider/gitlab.com"
      },
      "Action": "sts:AssumeRoleWithWebIdentity",
      "Condition": {
        "StringLike": {
          "gitlab.com:sub": "project_path:${var.gitlab_group}/${var.gitlab_subgroup}/${var.gitlab_subgroup2}/*:ref_type:branch:ref:*"
        }
      }
    }
  ]
}
EOF
}

# Attach the IAM policy to the role
resource "aws_iam_role_policy_attachment" "gitlab_policy_attachment" {
  policy_arn = data.aws_iam_policy.GitlabDeploy.arn
  role       = aws_iam_role.gitlab_ci.name
}