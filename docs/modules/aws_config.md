
# AWS Config Module
Baselines an account with AWS Config configuration.

If `audit_account_id` is set to `"self"` it will configure resources needed by a parent (centralized) AWS Config recipient account.

## Region addition
A script that generates each region's resources from a teplate is located in _/src_

Example usage (from this module's directory):
```bash
for i in $(aws ec2 describe-regions --output text | awk '{print $4}'); do rm -rf config_$i.tf && ./src/template_gen.sh $i > config_$i.tf; done && rm config_ap-northeast-3.tf
```

**Note:** At this time ap-northeast-3 (Osaka) does not support multi region/account Config.

For the most recent list of supported resources see the AWS Config Docs [here](https://docs.aws.amazon.com/config/latest/developerguide/aggregate-data.html).
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.2.3 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | 4.20.0 |
## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_audit_account_id"></a> [audit\_account\_id](#input\_audit\_account\_id) | AWS Account ID of Centralized AWS Config Account | `string` | n/a | yes |
| <a name="input_central_audit_account_role_name"></a> [central\_audit\_account\_role\_name](#input\_central\_audit\_account\_role\_name) | Needed if central Audit account - IAM Role name for Config to use. | `string` | `""` | no |
| <a name="input_customer_prefix"></a> [customer\_prefix](#input\_customer\_prefix) | Prefix for all resources with the customer name. Should be lower case characters starting with an alpha character and be consistent across the environment. Only `-` as a special character. | `string` | n/a | yes |
## Outputs

No outputs.
## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 4.20.0 |
| <a name="provider_aws.ap-northeast-1"></a> [aws.ap-northeast-1](#provider\_aws.ap-northeast-1) | 4.20.0 |
| <a name="provider_aws.ap-northeast-2"></a> [aws.ap-northeast-2](#provider\_aws.ap-northeast-2) | 4.20.0 |
| <a name="provider_aws.ap-south-1"></a> [aws.ap-south-1](#provider\_aws.ap-south-1) | 4.20.0 |
| <a name="provider_aws.ap-southeast-1"></a> [aws.ap-southeast-1](#provider\_aws.ap-southeast-1) | 4.20.0 |
| <a name="provider_aws.ap-southeast-2"></a> [aws.ap-southeast-2](#provider\_aws.ap-southeast-2) | 4.20.0 |
| <a name="provider_aws.ca-central-1"></a> [aws.ca-central-1](#provider\_aws.ca-central-1) | 4.20.0 |
| <a name="provider_aws.eu-central-1"></a> [aws.eu-central-1](#provider\_aws.eu-central-1) | 4.20.0 |
| <a name="provider_aws.eu-north-1"></a> [aws.eu-north-1](#provider\_aws.eu-north-1) | 4.20.0 |
| <a name="provider_aws.eu-west-1"></a> [aws.eu-west-1](#provider\_aws.eu-west-1) | 4.20.0 |
| <a name="provider_aws.eu-west-2"></a> [aws.eu-west-2](#provider\_aws.eu-west-2) | 4.20.0 |
| <a name="provider_aws.eu-west-3"></a> [aws.eu-west-3](#provider\_aws.eu-west-3) | 4.20.0 |
| <a name="provider_aws.sa-east-1"></a> [aws.sa-east-1](#provider\_aws.sa-east-1) | 4.20.0 |
| <a name="provider_aws.us-east-1"></a> [aws.us-east-1](#provider\_aws.us-east-1) | 4.20.0 |
| <a name="provider_aws.us-east-2"></a> [aws.us-east-2](#provider\_aws.us-east-2) | 4.20.0 |
| <a name="provider_aws.us-west-1"></a> [aws.us-west-1](#provider\_aws.us-west-1) | 4.20.0 |
| <a name="provider_aws.us-west-2"></a> [aws.us-west-2](#provider\_aws.us-west-2) | 4.20.0 |
## Modules

No modules.
## Resources

| Name | Type |
|------|------|
| [aws_config_aggregate_authorization.ap_northeast_1_config_auth](https://registry.terraform.io/providers/hashicorp/aws/4.20.0/docs/resources/config_aggregate_authorization) | resource |
| [aws_config_aggregate_authorization.ap_northeast_2_config_auth](https://registry.terraform.io/providers/hashicorp/aws/4.20.0/docs/resources/config_aggregate_authorization) | resource |
| [aws_config_aggregate_authorization.ap_south_1_config_auth](https://registry.terraform.io/providers/hashicorp/aws/4.20.0/docs/resources/config_aggregate_authorization) | resource |
| [aws_config_aggregate_authorization.ap_southeast_1_config_auth](https://registry.terraform.io/providers/hashicorp/aws/4.20.0/docs/resources/config_aggregate_authorization) | resource |
| [aws_config_aggregate_authorization.ap_southeast_2_config_auth](https://registry.terraform.io/providers/hashicorp/aws/4.20.0/docs/resources/config_aggregate_authorization) | resource |
| [aws_config_aggregate_authorization.ca_central_1_config_auth](https://registry.terraform.io/providers/hashicorp/aws/4.20.0/docs/resources/config_aggregate_authorization) | resource |
| [aws_config_aggregate_authorization.eu_central_1_config_auth](https://registry.terraform.io/providers/hashicorp/aws/4.20.0/docs/resources/config_aggregate_authorization) | resource |
| [aws_config_aggregate_authorization.eu_north_1_config_auth](https://registry.terraform.io/providers/hashicorp/aws/4.20.0/docs/resources/config_aggregate_authorization) | resource |
| [aws_config_aggregate_authorization.eu_west_1_config_auth](https://registry.terraform.io/providers/hashicorp/aws/4.20.0/docs/resources/config_aggregate_authorization) | resource |
| [aws_config_aggregate_authorization.eu_west_2_config_auth](https://registry.terraform.io/providers/hashicorp/aws/4.20.0/docs/resources/config_aggregate_authorization) | resource |
| [aws_config_aggregate_authorization.eu_west_3_config_auth](https://registry.terraform.io/providers/hashicorp/aws/4.20.0/docs/resources/config_aggregate_authorization) | resource |
| [aws_config_aggregate_authorization.sa_east_1_config_auth](https://registry.terraform.io/providers/hashicorp/aws/4.20.0/docs/resources/config_aggregate_authorization) | resource |
| [aws_config_aggregate_authorization.us_east_1_config_auth](https://registry.terraform.io/providers/hashicorp/aws/4.20.0/docs/resources/config_aggregate_authorization) | resource |
| [aws_config_aggregate_authorization.us_east_2_config_auth](https://registry.terraform.io/providers/hashicorp/aws/4.20.0/docs/resources/config_aggregate_authorization) | resource |
| [aws_config_aggregate_authorization.us_west_1_config_auth](https://registry.terraform.io/providers/hashicorp/aws/4.20.0/docs/resources/config_aggregate_authorization) | resource |
| [aws_config_aggregate_authorization.us_west_2_config_auth](https://registry.terraform.io/providers/hashicorp/aws/4.20.0/docs/resources/config_aggregate_authorization) | resource |
| [aws_config_configuration_recorder.ap_northeast_1_account_recorder](https://registry.terraform.io/providers/hashicorp/aws/4.20.0/docs/resources/config_configuration_recorder) | resource |
| [aws_config_configuration_recorder.ap_northeast_2_account_recorder](https://registry.terraform.io/providers/hashicorp/aws/4.20.0/docs/resources/config_configuration_recorder) | resource |
| [aws_config_configuration_recorder.ap_south_1_account_recorder](https://registry.terraform.io/providers/hashicorp/aws/4.20.0/docs/resources/config_configuration_recorder) | resource |
| [aws_config_configuration_recorder.ap_southeast_1_account_recorder](https://registry.terraform.io/providers/hashicorp/aws/4.20.0/docs/resources/config_configuration_recorder) | resource |
| [aws_config_configuration_recorder.ap_southeast_2_account_recorder](https://registry.terraform.io/providers/hashicorp/aws/4.20.0/docs/resources/config_configuration_recorder) | resource |
| [aws_config_configuration_recorder.ca_central_1_account_recorder](https://registry.terraform.io/providers/hashicorp/aws/4.20.0/docs/resources/config_configuration_recorder) | resource |
| [aws_config_configuration_recorder.eu_central_1_account_recorder](https://registry.terraform.io/providers/hashicorp/aws/4.20.0/docs/resources/config_configuration_recorder) | resource |
| [aws_config_configuration_recorder.eu_north_1_account_recorder](https://registry.terraform.io/providers/hashicorp/aws/4.20.0/docs/resources/config_configuration_recorder) | resource |
| [aws_config_configuration_recorder.eu_west_1_account_recorder](https://registry.terraform.io/providers/hashicorp/aws/4.20.0/docs/resources/config_configuration_recorder) | resource |
| [aws_config_configuration_recorder.eu_west_2_account_recorder](https://registry.terraform.io/providers/hashicorp/aws/4.20.0/docs/resources/config_configuration_recorder) | resource |
| [aws_config_configuration_recorder.eu_west_3_account_recorder](https://registry.terraform.io/providers/hashicorp/aws/4.20.0/docs/resources/config_configuration_recorder) | resource |
| [aws_config_configuration_recorder.sa_east_1_account_recorder](https://registry.terraform.io/providers/hashicorp/aws/4.20.0/docs/resources/config_configuration_recorder) | resource |
| [aws_config_configuration_recorder.us_east_1_account_recorder](https://registry.terraform.io/providers/hashicorp/aws/4.20.0/docs/resources/config_configuration_recorder) | resource |
| [aws_config_configuration_recorder.us_east_2_account_recorder](https://registry.terraform.io/providers/hashicorp/aws/4.20.0/docs/resources/config_configuration_recorder) | resource |
| [aws_config_configuration_recorder.us_west_1_account_recorder](https://registry.terraform.io/providers/hashicorp/aws/4.20.0/docs/resources/config_configuration_recorder) | resource |
| [aws_config_configuration_recorder.us_west_2_account_recorder](https://registry.terraform.io/providers/hashicorp/aws/4.20.0/docs/resources/config_configuration_recorder) | resource |
| [aws_config_configuration_recorder_status.ap_northeast_1_enable_account_recording](https://registry.terraform.io/providers/hashicorp/aws/4.20.0/docs/resources/config_configuration_recorder_status) | resource |
| [aws_config_configuration_recorder_status.ap_northeast_2_enable_account_recording](https://registry.terraform.io/providers/hashicorp/aws/4.20.0/docs/resources/config_configuration_recorder_status) | resource |
| [aws_config_configuration_recorder_status.ap_south_1_enable_account_recording](https://registry.terraform.io/providers/hashicorp/aws/4.20.0/docs/resources/config_configuration_recorder_status) | resource |
| [aws_config_configuration_recorder_status.ap_southeast_1_enable_account_recording](https://registry.terraform.io/providers/hashicorp/aws/4.20.0/docs/resources/config_configuration_recorder_status) | resource |
| [aws_config_configuration_recorder_status.ap_southeast_2_enable_account_recording](https://registry.terraform.io/providers/hashicorp/aws/4.20.0/docs/resources/config_configuration_recorder_status) | resource |
| [aws_config_configuration_recorder_status.ca_central_1_enable_account_recording](https://registry.terraform.io/providers/hashicorp/aws/4.20.0/docs/resources/config_configuration_recorder_status) | resource |
| [aws_config_configuration_recorder_status.eu_central_1_enable_account_recording](https://registry.terraform.io/providers/hashicorp/aws/4.20.0/docs/resources/config_configuration_recorder_status) | resource |
| [aws_config_configuration_recorder_status.eu_north_1_enable_account_recording](https://registry.terraform.io/providers/hashicorp/aws/4.20.0/docs/resources/config_configuration_recorder_status) | resource |
| [aws_config_configuration_recorder_status.eu_west_1_enable_account_recording](https://registry.terraform.io/providers/hashicorp/aws/4.20.0/docs/resources/config_configuration_recorder_status) | resource |
| [aws_config_configuration_recorder_status.eu_west_2_enable_account_recording](https://registry.terraform.io/providers/hashicorp/aws/4.20.0/docs/resources/config_configuration_recorder_status) | resource |
| [aws_config_configuration_recorder_status.eu_west_3_enable_account_recording](https://registry.terraform.io/providers/hashicorp/aws/4.20.0/docs/resources/config_configuration_recorder_status) | resource |
| [aws_config_configuration_recorder_status.sa_east_1_enable_account_recording](https://registry.terraform.io/providers/hashicorp/aws/4.20.0/docs/resources/config_configuration_recorder_status) | resource |
| [aws_config_configuration_recorder_status.us_east_1_enable_account_recording](https://registry.terraform.io/providers/hashicorp/aws/4.20.0/docs/resources/config_configuration_recorder_status) | resource |
| [aws_config_configuration_recorder_status.us_east_2_enable_account_recording](https://registry.terraform.io/providers/hashicorp/aws/4.20.0/docs/resources/config_configuration_recorder_status) | resource |
| [aws_config_configuration_recorder_status.us_west_1_enable_account_recording](https://registry.terraform.io/providers/hashicorp/aws/4.20.0/docs/resources/config_configuration_recorder_status) | resource |
| [aws_config_configuration_recorder_status.us_west_2_enable_account_recording](https://registry.terraform.io/providers/hashicorp/aws/4.20.0/docs/resources/config_configuration_recorder_status) | resource |
| [aws_config_delivery_channel.ap_northeast_1_to_central_audit_bucket](https://registry.terraform.io/providers/hashicorp/aws/4.20.0/docs/resources/config_delivery_channel) | resource |
| [aws_config_delivery_channel.ap_northeast_2_to_central_audit_bucket](https://registry.terraform.io/providers/hashicorp/aws/4.20.0/docs/resources/config_delivery_channel) | resource |
| [aws_config_delivery_channel.ap_south_1_to_central_audit_bucket](https://registry.terraform.io/providers/hashicorp/aws/4.20.0/docs/resources/config_delivery_channel) | resource |
| [aws_config_delivery_channel.ap_southeast_1_to_central_audit_bucket](https://registry.terraform.io/providers/hashicorp/aws/4.20.0/docs/resources/config_delivery_channel) | resource |
| [aws_config_delivery_channel.ap_southeast_2_to_central_audit_bucket](https://registry.terraform.io/providers/hashicorp/aws/4.20.0/docs/resources/config_delivery_channel) | resource |
| [aws_config_delivery_channel.ca_central_1_to_central_audit_bucket](https://registry.terraform.io/providers/hashicorp/aws/4.20.0/docs/resources/config_delivery_channel) | resource |
| [aws_config_delivery_channel.eu_central_1_to_central_audit_bucket](https://registry.terraform.io/providers/hashicorp/aws/4.20.0/docs/resources/config_delivery_channel) | resource |
| [aws_config_delivery_channel.eu_north_1_to_central_audit_bucket](https://registry.terraform.io/providers/hashicorp/aws/4.20.0/docs/resources/config_delivery_channel) | resource |
| [aws_config_delivery_channel.eu_west_1_to_central_audit_bucket](https://registry.terraform.io/providers/hashicorp/aws/4.20.0/docs/resources/config_delivery_channel) | resource |
| [aws_config_delivery_channel.eu_west_2_to_central_audit_bucket](https://registry.terraform.io/providers/hashicorp/aws/4.20.0/docs/resources/config_delivery_channel) | resource |
| [aws_config_delivery_channel.eu_west_3_to_central_audit_bucket](https://registry.terraform.io/providers/hashicorp/aws/4.20.0/docs/resources/config_delivery_channel) | resource |
| [aws_config_delivery_channel.sa_east_1_to_central_audit_bucket](https://registry.terraform.io/providers/hashicorp/aws/4.20.0/docs/resources/config_delivery_channel) | resource |
| [aws_config_delivery_channel.us_east_1_to_central_audit_bucket](https://registry.terraform.io/providers/hashicorp/aws/4.20.0/docs/resources/config_delivery_channel) | resource |
| [aws_config_delivery_channel.us_east_2_to_central_audit_bucket](https://registry.terraform.io/providers/hashicorp/aws/4.20.0/docs/resources/config_delivery_channel) | resource |
| [aws_config_delivery_channel.us_west_1_to_central_audit_bucket](https://registry.terraform.io/providers/hashicorp/aws/4.20.0/docs/resources/config_delivery_channel) | resource |
| [aws_config_delivery_channel.us_west_2_to_central_audit_bucket](https://registry.terraform.io/providers/hashicorp/aws/4.20.0/docs/resources/config_delivery_channel) | resource |
| [aws_iam_policy.config_s3_delivery](https://registry.terraform.io/providers/hashicorp/aws/4.20.0/docs/resources/iam_policy) | resource |
| [aws_iam_role_policy_attachment.s3_config_policy_attach](https://registry.terraform.io/providers/hashicorp/aws/4.20.0/docs/resources/iam_role_policy_attachment) | resource |
| [aws_iam_service_linked_role.config](https://registry.terraform.io/providers/hashicorp/aws/4.20.0/docs/resources/iam_service_linked_role) | resource |
| [aws_s3_bucket.config_delivery_bucket](https://registry.terraform.io/providers/hashicorp/aws/4.20.0/docs/resources/s3_bucket) | resource |
| [aws_caller_identity.current](https://registry.terraform.io/providers/hashicorp/aws/4.20.0/docs/data-sources/caller_identity) | data source |
# Changelog
All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [1.0.0] - 12/04/2022
Initial Release

## [1.1.0] - 01/07/2022
Bug fixes and Access Analyzer added in the Foundation

