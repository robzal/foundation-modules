
# Global Org Wide GuardDuty Configuration
Called in Main/Management AWS Account - enables GuardDuty globally.

## Region addition
A script that generates each region's resources from a teplate is located in _/src_

Example usage (from this module's directory):
```bash
for i in $(aws ec2 describe-regions --output text | awk '{print $4}'); do rm -rf config_$i.tf && ./src/template_gen.sh $i > gd_config_$i.tf; done
```
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.2.3 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | 4.20.0 |
## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_audit_account_id"></a> [audit\_account\_id](#input\_audit\_account\_id) | AWS Account ID for Audit account. | `string` | n/a | yes |
| <a name="input_role_name"></a> [role\_name](#input\_role\_name) | Name of IAM role to be created that is trusted from Main account. Defaults to AWSOrgAdmin | `string` | `"AWSOrgAdmin"` | no |
## Outputs

No outputs.
## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws.ap-northeast-1_audit"></a> [aws.ap-northeast-1\_audit](#provider\_aws.ap-northeast-1\_audit) | 4.20.0 |
| <a name="provider_aws.ap-northeast-1_management"></a> [aws.ap-northeast-1\_management](#provider\_aws.ap-northeast-1\_management) | 4.20.0 |
| <a name="provider_aws.ap-northeast-2_audit"></a> [aws.ap-northeast-2\_audit](#provider\_aws.ap-northeast-2\_audit) | 4.20.0 |
| <a name="provider_aws.ap-northeast-2_management"></a> [aws.ap-northeast-2\_management](#provider\_aws.ap-northeast-2\_management) | 4.20.0 |
| <a name="provider_aws.ap-northeast-3_audit"></a> [aws.ap-northeast-3\_audit](#provider\_aws.ap-northeast-3\_audit) | 4.20.0 |
| <a name="provider_aws.ap-northeast-3_management"></a> [aws.ap-northeast-3\_management](#provider\_aws.ap-northeast-3\_management) | 4.20.0 |
| <a name="provider_aws.ap-south-1_audit"></a> [aws.ap-south-1\_audit](#provider\_aws.ap-south-1\_audit) | 4.20.0 |
| <a name="provider_aws.ap-south-1_management"></a> [aws.ap-south-1\_management](#provider\_aws.ap-south-1\_management) | 4.20.0 |
| <a name="provider_aws.ap-southeast-1_audit"></a> [aws.ap-southeast-1\_audit](#provider\_aws.ap-southeast-1\_audit) | 4.20.0 |
| <a name="provider_aws.ap-southeast-1_management"></a> [aws.ap-southeast-1\_management](#provider\_aws.ap-southeast-1\_management) | 4.20.0 |
| <a name="provider_aws.ap-southeast-2_audit"></a> [aws.ap-southeast-2\_audit](#provider\_aws.ap-southeast-2\_audit) | 4.20.0 |
| <a name="provider_aws.ap-southeast-2_management"></a> [aws.ap-southeast-2\_management](#provider\_aws.ap-southeast-2\_management) | 4.20.0 |
| <a name="provider_aws.ca-central-1_audit"></a> [aws.ca-central-1\_audit](#provider\_aws.ca-central-1\_audit) | 4.20.0 |
| <a name="provider_aws.ca-central-1_management"></a> [aws.ca-central-1\_management](#provider\_aws.ca-central-1\_management) | 4.20.0 |
| <a name="provider_aws.eu-central-1_audit"></a> [aws.eu-central-1\_audit](#provider\_aws.eu-central-1\_audit) | 4.20.0 |
| <a name="provider_aws.eu-central-1_management"></a> [aws.eu-central-1\_management](#provider\_aws.eu-central-1\_management) | 4.20.0 |
| <a name="provider_aws.eu-north-1_audit"></a> [aws.eu-north-1\_audit](#provider\_aws.eu-north-1\_audit) | 4.20.0 |
| <a name="provider_aws.eu-north-1_management"></a> [aws.eu-north-1\_management](#provider\_aws.eu-north-1\_management) | 4.20.0 |
| <a name="provider_aws.eu-west-1_audit"></a> [aws.eu-west-1\_audit](#provider\_aws.eu-west-1\_audit) | 4.20.0 |
| <a name="provider_aws.eu-west-1_management"></a> [aws.eu-west-1\_management](#provider\_aws.eu-west-1\_management) | 4.20.0 |
| <a name="provider_aws.eu-west-2_audit"></a> [aws.eu-west-2\_audit](#provider\_aws.eu-west-2\_audit) | 4.20.0 |
| <a name="provider_aws.eu-west-2_management"></a> [aws.eu-west-2\_management](#provider\_aws.eu-west-2\_management) | 4.20.0 |
| <a name="provider_aws.eu-west-3_audit"></a> [aws.eu-west-3\_audit](#provider\_aws.eu-west-3\_audit) | 4.20.0 |
| <a name="provider_aws.eu-west-3_management"></a> [aws.eu-west-3\_management](#provider\_aws.eu-west-3\_management) | 4.20.0 |
| <a name="provider_aws.sa-east-1_audit"></a> [aws.sa-east-1\_audit](#provider\_aws.sa-east-1\_audit) | 4.20.0 |
| <a name="provider_aws.sa-east-1_management"></a> [aws.sa-east-1\_management](#provider\_aws.sa-east-1\_management) | 4.20.0 |
| <a name="provider_aws.us-east-1_audit"></a> [aws.us-east-1\_audit](#provider\_aws.us-east-1\_audit) | 4.20.0 |
| <a name="provider_aws.us-east-1_management"></a> [aws.us-east-1\_management](#provider\_aws.us-east-1\_management) | 4.20.0 |
| <a name="provider_aws.us-east-2_audit"></a> [aws.us-east-2\_audit](#provider\_aws.us-east-2\_audit) | 4.20.0 |
| <a name="provider_aws.us-east-2_management"></a> [aws.us-east-2\_management](#provider\_aws.us-east-2\_management) | 4.20.0 |
| <a name="provider_aws.us-west-1_audit"></a> [aws.us-west-1\_audit](#provider\_aws.us-west-1\_audit) | 4.20.0 |
| <a name="provider_aws.us-west-1_management"></a> [aws.us-west-1\_management](#provider\_aws.us-west-1\_management) | 4.20.0 |
| <a name="provider_aws.us-west-2_audit"></a> [aws.us-west-2\_audit](#provider\_aws.us-west-2\_audit) | 4.20.0 |
| <a name="provider_aws.us-west-2_management"></a> [aws.us-west-2\_management](#provider\_aws.us-west-2\_management) | 4.20.0 |
## Modules

No modules.
## Resources

| Name | Type |
|------|------|
| [aws_guardduty_detector.ap_northeast_1_audit_detector](https://registry.terraform.io/providers/hashicorp/aws/4.20.0/docs/resources/guardduty_detector) | resource |
| [aws_guardduty_detector.ap_northeast_1_enable_main_account](https://registry.terraform.io/providers/hashicorp/aws/4.20.0/docs/resources/guardduty_detector) | resource |
| [aws_guardduty_detector.ap_northeast_2_audit_detector](https://registry.terraform.io/providers/hashicorp/aws/4.20.0/docs/resources/guardduty_detector) | resource |
| [aws_guardduty_detector.ap_northeast_2_enable_main_account](https://registry.terraform.io/providers/hashicorp/aws/4.20.0/docs/resources/guardduty_detector) | resource |
| [aws_guardduty_detector.ap_northeast_3_audit_detector](https://registry.terraform.io/providers/hashicorp/aws/4.20.0/docs/resources/guardduty_detector) | resource |
| [aws_guardduty_detector.ap_northeast_3_enable_main_account](https://registry.terraform.io/providers/hashicorp/aws/4.20.0/docs/resources/guardduty_detector) | resource |
| [aws_guardduty_detector.ap_south_1_audit_detector](https://registry.terraform.io/providers/hashicorp/aws/4.20.0/docs/resources/guardduty_detector) | resource |
| [aws_guardduty_detector.ap_south_1_enable_main_account](https://registry.terraform.io/providers/hashicorp/aws/4.20.0/docs/resources/guardduty_detector) | resource |
| [aws_guardduty_detector.ap_southeast_1_audit_detector](https://registry.terraform.io/providers/hashicorp/aws/4.20.0/docs/resources/guardduty_detector) | resource |
| [aws_guardduty_detector.ap_southeast_1_enable_main_account](https://registry.terraform.io/providers/hashicorp/aws/4.20.0/docs/resources/guardduty_detector) | resource |
| [aws_guardduty_detector.ap_southeast_2_audit_detector](https://registry.terraform.io/providers/hashicorp/aws/4.20.0/docs/resources/guardduty_detector) | resource |
| [aws_guardduty_detector.ap_southeast_2_enable_main_account](https://registry.terraform.io/providers/hashicorp/aws/4.20.0/docs/resources/guardduty_detector) | resource |
| [aws_guardduty_detector.ca_central_1_audit_detector](https://registry.terraform.io/providers/hashicorp/aws/4.20.0/docs/resources/guardduty_detector) | resource |
| [aws_guardduty_detector.ca_central_1_enable_main_account](https://registry.terraform.io/providers/hashicorp/aws/4.20.0/docs/resources/guardduty_detector) | resource |
| [aws_guardduty_detector.eu_central_1_audit_detector](https://registry.terraform.io/providers/hashicorp/aws/4.20.0/docs/resources/guardduty_detector) | resource |
| [aws_guardduty_detector.eu_central_1_enable_main_account](https://registry.terraform.io/providers/hashicorp/aws/4.20.0/docs/resources/guardduty_detector) | resource |
| [aws_guardduty_detector.eu_north_1_audit_detector](https://registry.terraform.io/providers/hashicorp/aws/4.20.0/docs/resources/guardduty_detector) | resource |
| [aws_guardduty_detector.eu_north_1_enable_main_account](https://registry.terraform.io/providers/hashicorp/aws/4.20.0/docs/resources/guardduty_detector) | resource |
| [aws_guardduty_detector.eu_west_1_audit_detector](https://registry.terraform.io/providers/hashicorp/aws/4.20.0/docs/resources/guardduty_detector) | resource |
| [aws_guardduty_detector.eu_west_1_enable_main_account](https://registry.terraform.io/providers/hashicorp/aws/4.20.0/docs/resources/guardduty_detector) | resource |
| [aws_guardduty_detector.eu_west_2_audit_detector](https://registry.terraform.io/providers/hashicorp/aws/4.20.0/docs/resources/guardduty_detector) | resource |
| [aws_guardduty_detector.eu_west_2_enable_main_account](https://registry.terraform.io/providers/hashicorp/aws/4.20.0/docs/resources/guardduty_detector) | resource |
| [aws_guardduty_detector.eu_west_3_audit_detector](https://registry.terraform.io/providers/hashicorp/aws/4.20.0/docs/resources/guardduty_detector) | resource |
| [aws_guardduty_detector.eu_west_3_enable_main_account](https://registry.terraform.io/providers/hashicorp/aws/4.20.0/docs/resources/guardduty_detector) | resource |
| [aws_guardduty_detector.sa_east_1_audit_detector](https://registry.terraform.io/providers/hashicorp/aws/4.20.0/docs/resources/guardduty_detector) | resource |
| [aws_guardduty_detector.sa_east_1_enable_main_account](https://registry.terraform.io/providers/hashicorp/aws/4.20.0/docs/resources/guardduty_detector) | resource |
| [aws_guardduty_detector.us_east_1_audit_detector](https://registry.terraform.io/providers/hashicorp/aws/4.20.0/docs/resources/guardduty_detector) | resource |
| [aws_guardduty_detector.us_east_1_enable_main_account](https://registry.terraform.io/providers/hashicorp/aws/4.20.0/docs/resources/guardduty_detector) | resource |
| [aws_guardduty_detector.us_east_2_audit_detector](https://registry.terraform.io/providers/hashicorp/aws/4.20.0/docs/resources/guardduty_detector) | resource |
| [aws_guardduty_detector.us_east_2_enable_main_account](https://registry.terraform.io/providers/hashicorp/aws/4.20.0/docs/resources/guardduty_detector) | resource |
| [aws_guardduty_detector.us_west_1_audit_detector](https://registry.terraform.io/providers/hashicorp/aws/4.20.0/docs/resources/guardduty_detector) | resource |
| [aws_guardduty_detector.us_west_1_enable_main_account](https://registry.terraform.io/providers/hashicorp/aws/4.20.0/docs/resources/guardduty_detector) | resource |
| [aws_guardduty_detector.us_west_2_audit_detector](https://registry.terraform.io/providers/hashicorp/aws/4.20.0/docs/resources/guardduty_detector) | resource |
| [aws_guardduty_detector.us_west_2_enable_main_account](https://registry.terraform.io/providers/hashicorp/aws/4.20.0/docs/resources/guardduty_detector) | resource |
| [aws_guardduty_organization_admin_account.ap_northeast_1_audit_account_admin_delegate](https://registry.terraform.io/providers/hashicorp/aws/4.20.0/docs/resources/guardduty_organization_admin_account) | resource |
| [aws_guardduty_organization_admin_account.ap_northeast_2_audit_account_admin_delegate](https://registry.terraform.io/providers/hashicorp/aws/4.20.0/docs/resources/guardduty_organization_admin_account) | resource |
| [aws_guardduty_organization_admin_account.ap_northeast_3_audit_account_admin_delegate](https://registry.terraform.io/providers/hashicorp/aws/4.20.0/docs/resources/guardduty_organization_admin_account) | resource |
| [aws_guardduty_organization_admin_account.ap_south_1_audit_account_admin_delegate](https://registry.terraform.io/providers/hashicorp/aws/4.20.0/docs/resources/guardduty_organization_admin_account) | resource |
| [aws_guardduty_organization_admin_account.ap_southeast_1_audit_account_admin_delegate](https://registry.terraform.io/providers/hashicorp/aws/4.20.0/docs/resources/guardduty_organization_admin_account) | resource |
| [aws_guardduty_organization_admin_account.ap_southeast_2_audit_account_admin_delegate](https://registry.terraform.io/providers/hashicorp/aws/4.20.0/docs/resources/guardduty_organization_admin_account) | resource |
| [aws_guardduty_organization_admin_account.ca_central_1_audit_account_admin_delegate](https://registry.terraform.io/providers/hashicorp/aws/4.20.0/docs/resources/guardduty_organization_admin_account) | resource |
| [aws_guardduty_organization_admin_account.eu_central_1_audit_account_admin_delegate](https://registry.terraform.io/providers/hashicorp/aws/4.20.0/docs/resources/guardduty_organization_admin_account) | resource |
| [aws_guardduty_organization_admin_account.eu_north_1_audit_account_admin_delegate](https://registry.terraform.io/providers/hashicorp/aws/4.20.0/docs/resources/guardduty_organization_admin_account) | resource |
| [aws_guardduty_organization_admin_account.eu_west_1_audit_account_admin_delegate](https://registry.terraform.io/providers/hashicorp/aws/4.20.0/docs/resources/guardduty_organization_admin_account) | resource |
| [aws_guardduty_organization_admin_account.eu_west_2_audit_account_admin_delegate](https://registry.terraform.io/providers/hashicorp/aws/4.20.0/docs/resources/guardduty_organization_admin_account) | resource |
| [aws_guardduty_organization_admin_account.eu_west_3_audit_account_admin_delegate](https://registry.terraform.io/providers/hashicorp/aws/4.20.0/docs/resources/guardduty_organization_admin_account) | resource |
| [aws_guardduty_organization_admin_account.sa_east_1_audit_account_admin_delegate](https://registry.terraform.io/providers/hashicorp/aws/4.20.0/docs/resources/guardduty_organization_admin_account) | resource |
| [aws_guardduty_organization_admin_account.us_east_1_audit_account_admin_delegate](https://registry.terraform.io/providers/hashicorp/aws/4.20.0/docs/resources/guardduty_organization_admin_account) | resource |
| [aws_guardduty_organization_admin_account.us_east_2_audit_account_admin_delegate](https://registry.terraform.io/providers/hashicorp/aws/4.20.0/docs/resources/guardduty_organization_admin_account) | resource |
| [aws_guardduty_organization_admin_account.us_west_1_audit_account_admin_delegate](https://registry.terraform.io/providers/hashicorp/aws/4.20.0/docs/resources/guardduty_organization_admin_account) | resource |
| [aws_guardduty_organization_admin_account.us_west_2_audit_account_admin_delegate](https://registry.terraform.io/providers/hashicorp/aws/4.20.0/docs/resources/guardduty_organization_admin_account) | resource |
| [aws_guardduty_organization_configuration.ap_northeast_1_org_wide_guardduty_config](https://registry.terraform.io/providers/hashicorp/aws/4.20.0/docs/resources/guardduty_organization_configuration) | resource |
| [aws_guardduty_organization_configuration.ap_northeast_2_org_wide_guardduty_config](https://registry.terraform.io/providers/hashicorp/aws/4.20.0/docs/resources/guardduty_organization_configuration) | resource |
| [aws_guardduty_organization_configuration.ap_northeast_3_org_wide_guardduty_config](https://registry.terraform.io/providers/hashicorp/aws/4.20.0/docs/resources/guardduty_organization_configuration) | resource |
| [aws_guardduty_organization_configuration.ap_south_1_org_wide_guardduty_config](https://registry.terraform.io/providers/hashicorp/aws/4.20.0/docs/resources/guardduty_organization_configuration) | resource |
| [aws_guardduty_organization_configuration.ap_southeast_1_org_wide_guardduty_config](https://registry.terraform.io/providers/hashicorp/aws/4.20.0/docs/resources/guardduty_organization_configuration) | resource |
| [aws_guardduty_organization_configuration.ap_southeast_2_org_wide_guardduty_config](https://registry.terraform.io/providers/hashicorp/aws/4.20.0/docs/resources/guardduty_organization_configuration) | resource |
| [aws_guardduty_organization_configuration.ca_central_1_org_wide_guardduty_config](https://registry.terraform.io/providers/hashicorp/aws/4.20.0/docs/resources/guardduty_organization_configuration) | resource |
| [aws_guardduty_organization_configuration.eu_central_1_org_wide_guardduty_config](https://registry.terraform.io/providers/hashicorp/aws/4.20.0/docs/resources/guardduty_organization_configuration) | resource |
| [aws_guardduty_organization_configuration.eu_north_1_org_wide_guardduty_config](https://registry.terraform.io/providers/hashicorp/aws/4.20.0/docs/resources/guardduty_organization_configuration) | resource |
| [aws_guardduty_organization_configuration.eu_west_1_org_wide_guardduty_config](https://registry.terraform.io/providers/hashicorp/aws/4.20.0/docs/resources/guardduty_organization_configuration) | resource |
| [aws_guardduty_organization_configuration.eu_west_2_org_wide_guardduty_config](https://registry.terraform.io/providers/hashicorp/aws/4.20.0/docs/resources/guardduty_organization_configuration) | resource |
| [aws_guardduty_organization_configuration.eu_west_3_org_wide_guardduty_config](https://registry.terraform.io/providers/hashicorp/aws/4.20.0/docs/resources/guardduty_organization_configuration) | resource |
| [aws_guardduty_organization_configuration.sa_east_1_org_wide_guardduty_config](https://registry.terraform.io/providers/hashicorp/aws/4.20.0/docs/resources/guardduty_organization_configuration) | resource |
| [aws_guardduty_organization_configuration.us_east_1_org_wide_guardduty_config](https://registry.terraform.io/providers/hashicorp/aws/4.20.0/docs/resources/guardduty_organization_configuration) | resource |
| [aws_guardduty_organization_configuration.us_east_2_org_wide_guardduty_config](https://registry.terraform.io/providers/hashicorp/aws/4.20.0/docs/resources/guardduty_organization_configuration) | resource |
| [aws_guardduty_organization_configuration.us_west_1_org_wide_guardduty_config](https://registry.terraform.io/providers/hashicorp/aws/4.20.0/docs/resources/guardduty_organization_configuration) | resource |
| [aws_guardduty_organization_configuration.us_west_2_org_wide_guardduty_config](https://registry.terraform.io/providers/hashicorp/aws/4.20.0/docs/resources/guardduty_organization_configuration) | resource |
# Changelog
All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [1.0.0] - 12/04/2022
Initial Release

## [1.1.0] - 01/07/2022
Bug fixes and Access Analyzer added in the Foundation

