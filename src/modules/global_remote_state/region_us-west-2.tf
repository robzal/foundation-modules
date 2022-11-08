provider "aws" {
  alias  = "us-west-2"
  region = "us-west-2"
}

module "remote_state_us_west_2" {
  count = contains(var.regions_to_enable, "us-west-2") ? 1 : 0
  providers = {
    aws = aws.us-west-2
  }
  source                             = "git@github.com:robzal/foundation-modules.git//src/modules/remote_state?ref=v1.1.0"
  customer_prefix                    = var.customer_prefix
  cross_account_remote_state_role_id = var.cross_account_remote_state_role_id
}
