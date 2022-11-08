provider "aws" {
  alias  = "us-east-1"
  region = "us-east-1"
}

module "remote_state_us_east_1" {
  count = contains(var.regions_to_enable, "us-east-1") ? 1 : 0
  providers = {
    aws = aws.us-east-1
  }
  source                             = "git@github.com:robzal/foundation_modules.git//src/modules/remote_state?ref=v1.1.0"
  customer_prefix                    = var.customer_prefix
  cross_account_remote_state_role_id = var.cross_account_remote_state_role_id
}
