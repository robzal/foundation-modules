provider "aws" {
  alias  = "ap-southeast-2"
  region = "ap-southeast-2"
}

module "remote_state_ap_southeast_2" {
  count = contains(var.regions_to_enable, "ap-southeast-2") ? 1 : 0
  providers = {
    aws = aws.ap-southeast-2
  }
  source                             = "git@github.com:robzal/foundation_modules.git//src/modules/remote_state?ref=v1.1.0"
  customer_prefix                    = var.customer_prefix
  cross_account_remote_state_role_id = var.cross_account_remote_state_role_id
}
