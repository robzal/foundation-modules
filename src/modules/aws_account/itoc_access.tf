module "itoc_access" {
  providers = {
    aws = aws.member
  }
  source           = "git@github.com:robzal/foundation_modules.git//src/modules/itoc_access?ref=v1.1.0"
  read_access      = var.enable_itoc_read_access
  write_access     = var.enable_itoc_write_access
  managed_services = var.enable_itoc_managed_services_access

  depends_on = [
    time_sleep.account_init_sleep
  ]
}
