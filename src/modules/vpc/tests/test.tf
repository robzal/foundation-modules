module "vpc_test" {
  source         = "git@github.com:robzal/foundation_modules.git//src/modules/"
  naming_prefix  = "itoc-tftest"
  network_prefix = "10.0"
}
