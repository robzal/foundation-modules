module "github_access" {
  providers = {
    aws = aws.member
  }
  count           = var.grant_github_access ? 1 : 0
  source          = "git@github.com:robzal/foundation-modules.git//src/modules/github_oidc_aws_access?ref=v1.1.0"
  repository_path = var.github_repository_path

  depends_on = [
    time_sleep.account_init_sleep
  ]
}
