
# AWS Config Configuration Module
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.2.3 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | 4.20.0 |
## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_audit_account_id"></a> [audit\_account\_id](#input\_audit\_account\_id) | AWS Account ID of Centralized AWS Config Account | `string` | n/a | yes |
| <a name="input_aws_region"></a> [aws\_region](#input\_aws\_region) | AWS Region to set Config up in. | `string` | n/a | yes |
| <a name="input_central_audit_account_role_name"></a> [central\_audit\_account\_role\_name](#input\_central\_audit\_account\_role\_name) | Needed if central Audit account - IAM Role name for Config to use. | `string` | `""` | no |
| <a name="input_customer_prefix"></a> [customer\_prefix](#input\_customer\_prefix) | Prefix for all resources with the customer name. Should be lower case characters starting with an alpha character and be consistent across the environment. Only `-` as a special character. | `string` | n/a | yes |
## Outputs

No outputs.
## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 4.20.0 |
## Modules

No modules.
## Resources

| Name | Type |
|------|------|
| [aws_config_aggregate_authorization.config_auth](https://registry.terraform.io/providers/hashicorp/aws/4.20.0/docs/resources/config_aggregate_authorization) | resource |
| [aws_config_configuration_recorder.account_recorder](https://registry.terraform.io/providers/hashicorp/aws/4.20.0/docs/resources/config_configuration_recorder) | resource |
| [aws_config_configuration_recorder_status.enable_account_recording](https://registry.terraform.io/providers/hashicorp/aws/4.20.0/docs/resources/config_configuration_recorder_status) | resource |
| [aws_config_delivery_channel.central_bucket](https://registry.terraform.io/providers/hashicorp/aws/4.20.0/docs/resources/config_delivery_channel) | resource |
| [aws_iam_policy.config_s3_delivery](https://registry.terraform.io/providers/hashicorp/aws/4.20.0/docs/resources/iam_policy) | resource |
| [aws_iam_role_policy_attachment.s3_config_policy_attach](https://registry.terraform.io/providers/hashicorp/aws/4.20.0/docs/resources/iam_role_policy_attachment) | resource |
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

