
# Default All Default VPCs - Lambda Terraform Module
This should be placed in the Main Account of an AWS Organisation.

The Lambda, once triggered, will delete all the default VPCs in all regions, in all child accounts in the AWS Org.
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.2.3 |
| <a name="requirement_archive"></a> [archive](#requirement\_archive) | 2.2.0 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | 4.20.0 |
## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_org_admin_role_name"></a> [org\_admin\_role\_name](#input\_org\_admin\_role\_name) | IAM Role Name for default org admin role. | `string` | n/a | yes |
## Outputs

No outputs.
## Providers

| Name | Version |
|------|---------|
| <a name="provider_archive"></a> [archive](#provider\_archive) | 2.2.0 |
| <a name="provider_aws"></a> [aws](#provider\_aws) | 4.20.0 |
## Modules

No modules.
## Resources

| Name | Type |
|------|------|
| [aws_cloudwatch_log_group.delete_default_vpcs_lambda_log_group](https://registry.terraform.io/providers/hashicorp/aws/4.20.0/docs/resources/cloudwatch_log_group) | resource |
| [aws_iam_role.delete_default_vpcs_role](https://registry.terraform.io/providers/hashicorp/aws/4.20.0/docs/resources/iam_role) | resource |
| [aws_lambda_function.delete_default_vpcs_function](https://registry.terraform.io/providers/hashicorp/aws/4.20.0/docs/resources/lambda_function) | resource |
| [archive_file.delete_default_vpcs_lambda_zip](https://registry.terraform.io/providers/hashicorp/archive/2.2.0/docs/data-sources/file) | data source |
| [aws_caller_identity.current](https://registry.terraform.io/providers/hashicorp/aws/4.20.0/docs/data-sources/caller_identity) | data source |
| [aws_iam_policy_document.cross_account](https://registry.terraform.io/providers/hashicorp/aws/4.20.0/docs/data-sources/iam_policy_document) | data source |
| [aws_iam_policy_document.deldefvpc](https://registry.terraform.io/providers/hashicorp/aws/4.20.0/docs/data-sources/iam_policy_document) | data source |
| [aws_iam_policy_document.event_lambda](https://registry.terraform.io/providers/hashicorp/aws/4.20.0/docs/data-sources/iam_policy_document) | data source |
# Changelog
All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [1.0.0] - 12/04/2022
Initial Release

## [1.1.0] - 01/07/2022
Bug fixes and Access Analyzer added in the Foundation

