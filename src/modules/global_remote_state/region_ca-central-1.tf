provider "aws" {
  alias  = "ca-central-1"
  region = "ca-central-1"
}

module "remote_state_ca_central_1" {
  count = contains(var.regions_to_enable, "ca-central-1") ? 1 : 0
  providers = {
    aws = aws.ca-central-1
  }
  source                             = "git@github.com:robzal/foundation_modules.git//src/modules/remote_state?ref=v1.1.0"
  customer_prefix                    = var.customer_prefix
  cross_account_remote_state_role_id = var.cross_account_remote_state_role_id
}
