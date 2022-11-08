
# Global Default EBS Encryption Module
Baselines an account with EBS default encryption configuration globally.

## Region addition
A script that generates each region's resources from a teplate is located in _/src_

Example usage (from this module's directory):
```bash
for i in $(aws ec2 describe-regions --output text | awk '{print $4}'); do rm -rf config_$i.tf && ./src/template_gen.sh $i > ebs_enc_$i.tf; done
```
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.2.3 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | 4.20.0 |
## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_cmk_enable_autoscaling_access"></a> [cmk\_enable\_autoscaling\_access](#input\_cmk\_enable\_autoscaling\_access) | Allow autoscaling service to use EBS with default CMK, defaults to `false` | `bool` | `false` | no |
| <a name="input_cmk_policy_additional_statements"></a> [cmk\_policy\_additional\_statements](#input\_cmk\_policy\_additional\_statements) | Optional, additional KMS key statements to add to CMK for EBS default encryption. Note `use_cmk` must be `true` to take effect. | `string` | `""` | no |
| <a name="input_use_cmk"></a> [use\_cmk](#input\_use\_cmk) | Use CMK KMS key for default EBS encryption. One will be created per active region. | `bool` | `false` | no |
## Outputs

No outputs.
## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 4.20.0 |
| <a name="provider_aws.ap-northeast-1"></a> [aws.ap-northeast-1](#provider\_aws.ap-northeast-1) | 4.20.0 |
| <a name="provider_aws.ap-northeast-2"></a> [aws.ap-northeast-2](#provider\_aws.ap-northeast-2) | 4.20.0 |
| <a name="provider_aws.ap-northeast-3"></a> [aws.ap-northeast-3](#provider\_aws.ap-northeast-3) | 4.20.0 |
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
| [aws_ebs_default_kms_key.ap_northeast_1_ebs_default_cmk](https://registry.terraform.io/providers/hashicorp/aws/4.20.0/docs/resources/ebs_default_kms_key) | resource |
| [aws_ebs_default_kms_key.ap_northeast_2_ebs_default_cmk](https://registry.terraform.io/providers/hashicorp/aws/4.20.0/docs/resources/ebs_default_kms_key) | resource |
| [aws_ebs_default_kms_key.ap_northeast_3_ebs_default_cmk](https://registry.terraform.io/providers/hashicorp/aws/4.20.0/docs/resources/ebs_default_kms_key) | resource |
| [aws_ebs_default_kms_key.ap_south_1_ebs_default_cmk](https://registry.terraform.io/providers/hashicorp/aws/4.20.0/docs/resources/ebs_default_kms_key) | resource |
| [aws_ebs_default_kms_key.ap_southeast_1_ebs_default_cmk](https://registry.terraform.io/providers/hashicorp/aws/4.20.0/docs/resources/ebs_default_kms_key) | resource |
| [aws_ebs_default_kms_key.ap_southeast_2_ebs_default_cmk](https://registry.terraform.io/providers/hashicorp/aws/4.20.0/docs/resources/ebs_default_kms_key) | resource |
| [aws_ebs_default_kms_key.ca_central_1_ebs_default_cmk](https://registry.terraform.io/providers/hashicorp/aws/4.20.0/docs/resources/ebs_default_kms_key) | resource |
| [aws_ebs_default_kms_key.eu_central_1_ebs_default_cmk](https://registry.terraform.io/providers/hashicorp/aws/4.20.0/docs/resources/ebs_default_kms_key) | resource |
| [aws_ebs_default_kms_key.eu_north_1_ebs_default_cmk](https://registry.terraform.io/providers/hashicorp/aws/4.20.0/docs/resources/ebs_default_kms_key) | resource |
| [aws_ebs_default_kms_key.eu_west_1_ebs_default_cmk](https://registry.terraform.io/providers/hashicorp/aws/4.20.0/docs/resources/ebs_default_kms_key) | resource |
| [aws_ebs_default_kms_key.eu_west_2_ebs_default_cmk](https://registry.terraform.io/providers/hashicorp/aws/4.20.0/docs/resources/ebs_default_kms_key) | resource |
| [aws_ebs_default_kms_key.eu_west_3_ebs_default_cmk](https://registry.terraform.io/providers/hashicorp/aws/4.20.0/docs/resources/ebs_default_kms_key) | resource |
| [aws_ebs_default_kms_key.sa_east_1_ebs_default_cmk](https://registry.terraform.io/providers/hashicorp/aws/4.20.0/docs/resources/ebs_default_kms_key) | resource |
| [aws_ebs_default_kms_key.us_east_1_ebs_default_cmk](https://registry.terraform.io/providers/hashicorp/aws/4.20.0/docs/resources/ebs_default_kms_key) | resource |
| [aws_ebs_default_kms_key.us_east_2_ebs_default_cmk](https://registry.terraform.io/providers/hashicorp/aws/4.20.0/docs/resources/ebs_default_kms_key) | resource |
| [aws_ebs_default_kms_key.us_west_1_ebs_default_cmk](https://registry.terraform.io/providers/hashicorp/aws/4.20.0/docs/resources/ebs_default_kms_key) | resource |
| [aws_ebs_default_kms_key.us_west_2_ebs_default_cmk](https://registry.terraform.io/providers/hashicorp/aws/4.20.0/docs/resources/ebs_default_kms_key) | resource |
| [aws_ebs_encryption_by_default.ebs_encryption_ap_northeast_1](https://registry.terraform.io/providers/hashicorp/aws/4.20.0/docs/resources/ebs_encryption_by_default) | resource |
| [aws_ebs_encryption_by_default.ebs_encryption_ap_northeast_2](https://registry.terraform.io/providers/hashicorp/aws/4.20.0/docs/resources/ebs_encryption_by_default) | resource |
| [aws_ebs_encryption_by_default.ebs_encryption_ap_northeast_3](https://registry.terraform.io/providers/hashicorp/aws/4.20.0/docs/resources/ebs_encryption_by_default) | resource |
| [aws_ebs_encryption_by_default.ebs_encryption_ap_south_1](https://registry.terraform.io/providers/hashicorp/aws/4.20.0/docs/resources/ebs_encryption_by_default) | resource |
| [aws_ebs_encryption_by_default.ebs_encryption_ap_southeast_1](https://registry.terraform.io/providers/hashicorp/aws/4.20.0/docs/resources/ebs_encryption_by_default) | resource |
| [aws_ebs_encryption_by_default.ebs_encryption_ap_southeast_2](https://registry.terraform.io/providers/hashicorp/aws/4.20.0/docs/resources/ebs_encryption_by_default) | resource |
| [aws_ebs_encryption_by_default.ebs_encryption_ca_central_1](https://registry.terraform.io/providers/hashicorp/aws/4.20.0/docs/resources/ebs_encryption_by_default) | resource |
| [aws_ebs_encryption_by_default.ebs_encryption_eu_central_1](https://registry.terraform.io/providers/hashicorp/aws/4.20.0/docs/resources/ebs_encryption_by_default) | resource |
| [aws_ebs_encryption_by_default.ebs_encryption_eu_north_1](https://registry.terraform.io/providers/hashicorp/aws/4.20.0/docs/resources/ebs_encryption_by_default) | resource |
| [aws_ebs_encryption_by_default.ebs_encryption_eu_west_1](https://registry.terraform.io/providers/hashicorp/aws/4.20.0/docs/resources/ebs_encryption_by_default) | resource |
| [aws_ebs_encryption_by_default.ebs_encryption_eu_west_2](https://registry.terraform.io/providers/hashicorp/aws/4.20.0/docs/resources/ebs_encryption_by_default) | resource |
| [aws_ebs_encryption_by_default.ebs_encryption_eu_west_3](https://registry.terraform.io/providers/hashicorp/aws/4.20.0/docs/resources/ebs_encryption_by_default) | resource |
| [aws_ebs_encryption_by_default.ebs_encryption_sa_east_1](https://registry.terraform.io/providers/hashicorp/aws/4.20.0/docs/resources/ebs_encryption_by_default) | resource |
| [aws_ebs_encryption_by_default.ebs_encryption_us_east_1](https://registry.terraform.io/providers/hashicorp/aws/4.20.0/docs/resources/ebs_encryption_by_default) | resource |
| [aws_ebs_encryption_by_default.ebs_encryption_us_east_2](https://registry.terraform.io/providers/hashicorp/aws/4.20.0/docs/resources/ebs_encryption_by_default) | resource |
| [aws_ebs_encryption_by_default.ebs_encryption_us_west_1](https://registry.terraform.io/providers/hashicorp/aws/4.20.0/docs/resources/ebs_encryption_by_default) | resource |
| [aws_ebs_encryption_by_default.ebs_encryption_us_west_2](https://registry.terraform.io/providers/hashicorp/aws/4.20.0/docs/resources/ebs_encryption_by_default) | resource |
| [aws_kms_alias.ap_northeast_1_ebs_cmk_alias](https://registry.terraform.io/providers/hashicorp/aws/4.20.0/docs/resources/kms_alias) | resource |
| [aws_kms_alias.ap_northeast_2_ebs_cmk_alias](https://registry.terraform.io/providers/hashicorp/aws/4.20.0/docs/resources/kms_alias) | resource |
| [aws_kms_alias.ap_northeast_3_ebs_cmk_alias](https://registry.terraform.io/providers/hashicorp/aws/4.20.0/docs/resources/kms_alias) | resource |
| [aws_kms_alias.ap_south_1_ebs_cmk_alias](https://registry.terraform.io/providers/hashicorp/aws/4.20.0/docs/resources/kms_alias) | resource |
| [aws_kms_alias.ap_southeast_1_ebs_cmk_alias](https://registry.terraform.io/providers/hashicorp/aws/4.20.0/docs/resources/kms_alias) | resource |
| [aws_kms_alias.ap_southeast_2_ebs_cmk_alias](https://registry.terraform.io/providers/hashicorp/aws/4.20.0/docs/resources/kms_alias) | resource |
| [aws_kms_alias.ca_central_1_ebs_cmk_alias](https://registry.terraform.io/providers/hashicorp/aws/4.20.0/docs/resources/kms_alias) | resource |
| [aws_kms_alias.eu_central_1_ebs_cmk_alias](https://registry.terraform.io/providers/hashicorp/aws/4.20.0/docs/resources/kms_alias) | resource |
| [aws_kms_alias.eu_north_1_ebs_cmk_alias](https://registry.terraform.io/providers/hashicorp/aws/4.20.0/docs/resources/kms_alias) | resource |
| [aws_kms_alias.eu_west_1_ebs_cmk_alias](https://registry.terraform.io/providers/hashicorp/aws/4.20.0/docs/resources/kms_alias) | resource |
| [aws_kms_alias.eu_west_2_ebs_cmk_alias](https://registry.terraform.io/providers/hashicorp/aws/4.20.0/docs/resources/kms_alias) | resource |
| [aws_kms_alias.eu_west_3_ebs_cmk_alias](https://registry.terraform.io/providers/hashicorp/aws/4.20.0/docs/resources/kms_alias) | resource |
| [aws_kms_alias.sa_east_1_ebs_cmk_alias](https://registry.terraform.io/providers/hashicorp/aws/4.20.0/docs/resources/kms_alias) | resource |
| [aws_kms_alias.us_east_1_ebs_cmk_alias](https://registry.terraform.io/providers/hashicorp/aws/4.20.0/docs/resources/kms_alias) | resource |
| [aws_kms_alias.us_east_2_ebs_cmk_alias](https://registry.terraform.io/providers/hashicorp/aws/4.20.0/docs/resources/kms_alias) | resource |
| [aws_kms_alias.us_west_1_ebs_cmk_alias](https://registry.terraform.io/providers/hashicorp/aws/4.20.0/docs/resources/kms_alias) | resource |
| [aws_kms_alias.us_west_2_ebs_cmk_alias](https://registry.terraform.io/providers/hashicorp/aws/4.20.0/docs/resources/kms_alias) | resource |
| [aws_kms_key.ap_northeast_1_ebs_cmk](https://registry.terraform.io/providers/hashicorp/aws/4.20.0/docs/resources/kms_key) | resource |
| [aws_kms_key.ap_northeast_2_ebs_cmk](https://registry.terraform.io/providers/hashicorp/aws/4.20.0/docs/resources/kms_key) | resource |
| [aws_kms_key.ap_northeast_3_ebs_cmk](https://registry.terraform.io/providers/hashicorp/aws/4.20.0/docs/resources/kms_key) | resource |
| [aws_kms_key.ap_south_1_ebs_cmk](https://registry.terraform.io/providers/hashicorp/aws/4.20.0/docs/resources/kms_key) | resource |
| [aws_kms_key.ap_southeast_1_ebs_cmk](https://registry.terraform.io/providers/hashicorp/aws/4.20.0/docs/resources/kms_key) | resource |
| [aws_kms_key.ap_southeast_2_ebs_cmk](https://registry.terraform.io/providers/hashicorp/aws/4.20.0/docs/resources/kms_key) | resource |
| [aws_kms_key.ca_central_1_ebs_cmk](https://registry.terraform.io/providers/hashicorp/aws/4.20.0/docs/resources/kms_key) | resource |
| [aws_kms_key.eu_central_1_ebs_cmk](https://registry.terraform.io/providers/hashicorp/aws/4.20.0/docs/resources/kms_key) | resource |
| [aws_kms_key.eu_north_1_ebs_cmk](https://registry.terraform.io/providers/hashicorp/aws/4.20.0/docs/resources/kms_key) | resource |
| [aws_kms_key.eu_west_1_ebs_cmk](https://registry.terraform.io/providers/hashicorp/aws/4.20.0/docs/resources/kms_key) | resource |
| [aws_kms_key.eu_west_2_ebs_cmk](https://registry.terraform.io/providers/hashicorp/aws/4.20.0/docs/resources/kms_key) | resource |
| [aws_kms_key.eu_west_3_ebs_cmk](https://registry.terraform.io/providers/hashicorp/aws/4.20.0/docs/resources/kms_key) | resource |
| [aws_kms_key.sa_east_1_ebs_cmk](https://registry.terraform.io/providers/hashicorp/aws/4.20.0/docs/resources/kms_key) | resource |
| [aws_kms_key.us_east_1_ebs_cmk](https://registry.terraform.io/providers/hashicorp/aws/4.20.0/docs/resources/kms_key) | resource |
| [aws_kms_key.us_east_2_ebs_cmk](https://registry.terraform.io/providers/hashicorp/aws/4.20.0/docs/resources/kms_key) | resource |
| [aws_kms_key.us_west_1_ebs_cmk](https://registry.terraform.io/providers/hashicorp/aws/4.20.0/docs/resources/kms_key) | resource |
| [aws_kms_key.us_west_2_ebs_cmk](https://registry.terraform.io/providers/hashicorp/aws/4.20.0/docs/resources/kms_key) | resource |
| [aws_caller_identity.current](https://registry.terraform.io/providers/hashicorp/aws/4.20.0/docs/data-sources/caller_identity) | data source |
# Changelog
All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [1.0.0] - 12/04/2022
Initial Release

## [1.1.0] - 01/07/2022
Bug fixes and Access Analyzer added in the Foundation

