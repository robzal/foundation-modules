
# Base AWS Account Module
This module applies a baseline configuration for things needed in an Itoc Cloud Foundation
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.2.3 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | 4.20.0 |
## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_ebs_default_enc_cmk_autoscaling_policy"></a> [ebs\_default\_enc\_cmk\_autoscaling\_policy](#input\_ebs\_default\_enc\_cmk\_autoscaling\_policy) | For default EBS encryption in the account. Grants access to the AWS Autoscaling service to use/create EBS volumes wiht the CMK. Autoscaling Service Linked role must be present in account, and ebs\_default\_enc\_use\_cmk must be true, defaults to false | `bool` | `false` | no |
| <a name="input_ebs_default_enc_cmk_custom_statements"></a> [ebs\_default\_enc\_cmk\_custom\_statements](#input\_ebs\_default\_enc\_cmk\_custom\_statements) | For default EBS encryption in the account. Additional JSON Statements to add to CMK for default EBS encryption. ebs\_default\_enc\_use\_cmk must be true, defaults to empty | `string` | `""` | no |
| <a name="input_ebs_default_enc_use_cmk"></a> [ebs\_default\_enc\_use\_cmk](#input\_ebs\_default\_enc\_use\_cmk) | For default EBS encryption in the account. Use a CMK KMS key, defaults to false | `bool` | `false` | no |
| <a name="input_enable_inspector"></a> [enable\_inspector](#input\_enable\_inspector) | Whether AWS Inspector resources should be created, defaults to true | `bool` | `true` | no |
## Outputs

No outputs.
## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 4.20.0 |
## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_cis_cw"></a> [cis\_cw](#module\_cis\_cw) | git@github.com:robzal/foundation-modules.git//src/modules/cloudwatch_cis_alarms | v1.1.0 |
| <a name="module_multi_region_ebs_encryption"></a> [multi\_region\_ebs\_encryption](#module\_multi\_region\_ebs\_encryption) | git@github.com:robzal/foundation-modules.git//src/modules/global_ebs_encryption | v1.1.0 |
## Resources

| Name | Type |
|------|------|
| [aws_cloudwatch_event_rule.inspector_event_schedule](https://registry.terraform.io/providers/hashicorp/aws/4.20.0/docs/resources/cloudwatch_event_rule) | resource |
| [aws_cloudwatch_event_target.inspector_event_target](https://registry.terraform.io/providers/hashicorp/aws/4.20.0/docs/resources/cloudwatch_event_target) | resource |
| [aws_cloudwatch_log_group.cis](https://registry.terraform.io/providers/hashicorp/aws/4.20.0/docs/resources/cloudwatch_log_group) | resource |
| [aws_iam_account_password_policy.strict](https://registry.terraform.io/providers/hashicorp/aws/4.20.0/docs/resources/iam_account_password_policy) | resource |
| [aws_iam_role.inspector_event_role](https://registry.terraform.io/providers/hashicorp/aws/4.20.0/docs/resources/iam_role) | resource |
| [aws_iam_role_policy.inspector_event](https://registry.terraform.io/providers/hashicorp/aws/4.20.0/docs/resources/iam_role_policy) | resource |
| [aws_inspector_assessment_target.default_assessment_target](https://registry.terraform.io/providers/hashicorp/aws/4.20.0/docs/resources/inspector_assessment_target) | resource |
| [aws_inspector_assessment_template.default_assessment_template](https://registry.terraform.io/providers/hashicorp/aws/4.20.0/docs/resources/inspector_assessment_template) | resource |
| [aws_inspector_resource_group.default_assessment_resource_group](https://registry.terraform.io/providers/hashicorp/aws/4.20.0/docs/resources/inspector_resource_group) | resource |
| [aws_s3_account_public_access_block.block_all](https://registry.terraform.io/providers/hashicorp/aws/4.20.0/docs/resources/s3_account_public_access_block) | resource |
| [aws_iam_policy_document.inspector_event_role_policy](https://registry.terraform.io/providers/hashicorp/aws/4.20.0/docs/data-sources/iam_policy_document) | data source |
# Changelog
All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [1.0.0] - 12/04/2022
Initial Release

## [1.1.0] - 01/07/2022
Bug fixes and Access Analyzer added in the Foundation

