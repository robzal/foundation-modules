module "multi_region_ebs_encryption" {
  source = "git@github.com:robzal/foundation-modules.git//src/modules/global_ebs_encryption?ref=v1.1.0"

  use_cmk                          = var.ebs_default_enc_use_cmk
  cmk_enable_autoscaling_access    = var.ebs_default_enc_cmk_autoscaling_policy
  cmk_policy_additional_statements = var.ebs_default_enc_cmk_custom_statements
}
