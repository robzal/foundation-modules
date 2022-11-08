resource "aws_cloudwatch_log_group" "cis" {
  name = "cis-logs"
}

module "cis_cw" {
  source         = "git@github.com:robzal/foundation_modules.git//src/modules/cloudwatch_cis_alarms?ref=v1.1.0"
  log_group_name = aws_cloudwatch_log_group.cis.name
}
