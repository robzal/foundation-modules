
# Remote State Terraform Module
Used for bootsrapping remote state for child accounts in an AWS Org to use.

State is kept seperated by region to allow deploys to continue in the event of an AWS region outage.
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.2.3 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | 4.20.0 |
## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_cross_account_remote_state_role_id"></a> [cross\_account\_remote\_state\_role\_id](#input\_cross\_account\_remote\_state\_role\_id) | Used in non-primary regions this value is required to attach an extra policy to allow access to the extra resources in the secondary regions. | `string` | `""` | no |
| <a name="input_customer_prefix"></a> [customer\_prefix](#input\_customer\_prefix) | Prefix for all resources with the customer name. Should be lower case characters starting with an alpha character and be consistent across the environment. Only `-` as a special character. | `string` | n/a | yes |
| <a name="input_is_primary_region"></a> [is\_primary\_region](#input\_is\_primary\_region) | If primary region then the IAM roles are created. | `bool` | `false` | no |
| <a name="input_organisation_account_ids"></a> [organisation\_account\_ids](#input\_organisation\_account\_ids) | AWS Account Ids to assume the cross account remote state role. | `list(string)` | `[]` | no |
## Outputs

| Name | Description |
|------|-------------|
| <a name="output_cross_account_remote_state_role_arn"></a> [cross\_account\_remote\_state\_role\_arn](#output\_cross\_account\_remote\_state\_role\_arn) | In primary region this has the AWS IAM Role ARN. If secondary region then empty string. |
| <a name="output_cross_account_remote_state_role_id"></a> [cross\_account\_remote\_state\_role\_id](#output\_cross\_account\_remote\_state\_role\_id) | In primary region this has the AWS IAM Role Id. If secondary region then empty string. |
## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 4.20.0 |
## Modules

No modules.
## Resources

| Name | Type |
|------|------|
| [aws_dynamodb_table.tfstate](https://registry.terraform.io/providers/hashicorp/aws/4.20.0/docs/resources/dynamodb_table) | resource |
| [aws_iam_role.cross_account_tfstate_role](https://registry.terraform.io/providers/hashicorp/aws/4.20.0/docs/resources/iam_role) | resource |
| [aws_iam_role_policy.tfstate_policy](https://registry.terraform.io/providers/hashicorp/aws/4.20.0/docs/resources/iam_role_policy) | resource |
| [aws_kms_key.tfstate](https://registry.terraform.io/providers/hashicorp/aws/4.20.0/docs/resources/kms_key) | resource |
| [aws_s3_bucket.tfstate](https://registry.terraform.io/providers/hashicorp/aws/4.20.0/docs/resources/s3_bucket) | resource |
| [aws_s3_bucket_policy.tfstate](https://registry.terraform.io/providers/hashicorp/aws/4.20.0/docs/resources/s3_bucket_policy) | resource |
| [aws_s3_bucket_public_access_block.tfstate](https://registry.terraform.io/providers/hashicorp/aws/4.20.0/docs/resources/s3_bucket_public_access_block) | resource |
| [aws_iam_policy_document.tfstate_cross_account_policy](https://registry.terraform.io/providers/hashicorp/aws/4.20.0/docs/data-sources/iam_policy_document) | data source |
| [aws_region.current](https://registry.terraform.io/providers/hashicorp/aws/4.20.0/docs/data-sources/region) | data source |
# Changelog
All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [1.0.0] - 12/04/2022
Initial Release

## [1.1.0] - 01/07/2022
Bug fixes and Access Analyzer added in the Foundation

