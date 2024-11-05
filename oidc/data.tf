data "aws_caller_identity" "current" {}

data "aws_iam_policy" "GitlabDeploy" {
  arn = "arn:aws:iam::aws:policy/AdministratorAccess"
}