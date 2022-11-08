
# AWS Backup Child Account Configuration
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.2.3 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | 4.20.0 |
## Inputs

No inputs.
## Outputs

| Name | Description |
|------|-------------|
| <a name="output_aws_backup_role_arn"></a> [aws\_backup\_role\_arn](#output\_aws\_backup\_role\_arn) | AWS IAM Role that backups run as. |
## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 4.20.0 |
## Modules

No modules.
## Resources

| Name | Type |
|------|------|
| [aws_backup_region_settings.this](https://registry.terraform.io/providers/hashicorp/aws/4.20.0/docs/resources/backup_region_settings) | resource |
| [aws_backup_vault.backup_vault](https://registry.terraform.io/providers/hashicorp/aws/4.20.0/docs/resources/backup_vault) | resource |
| [aws_iam_role.aws_backup_role](https://registry.terraform.io/providers/hashicorp/aws/4.20.0/docs/resources/iam_role) | resource |
| [aws_iam_role_policy_attachment.aws_backup_role](https://registry.terraform.io/providers/hashicorp/aws/4.20.0/docs/resources/iam_role_policy_attachment) | resource |
| [aws_iam_policy_document.aws_backup_role](https://registry.terraform.io/providers/hashicorp/aws/4.20.0/docs/data-sources/iam_policy_document) | data source |
# Changelog
All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [1.0.0] - 12/04/2022
Initial Release

## [1.1.0] - 01/07/2022
Bug fixes and Access Analyzer added in the Foundation

