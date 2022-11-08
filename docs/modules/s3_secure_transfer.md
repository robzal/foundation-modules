
# AWS S3 Bucket for sensitive file transfer
Intended for Itoc Managed Services integration.
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.2.3 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | 4.20.0 |
## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_bucket_name"></a> [bucket\_name](#input\_bucket\_name) | Bucket name to create | `string` | n/a | yes |
| <a name="input_sns_topic_arn"></a> [sns\_topic\_arn](#input\_sns\_topic\_arn) | SNS Topic to notify when files are uploaded | `string` | n/a | yes |
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
| [aws_s3_bucket.this](https://registry.terraform.io/providers/hashicorp/aws/4.20.0/docs/resources/s3_bucket) | resource |
| [aws_s3_bucket_notification.sensitive_data_transfers_notification](https://registry.terraform.io/providers/hashicorp/aws/4.20.0/docs/resources/s3_bucket_notification) | resource |
| [aws_s3_bucket_ownership_controls.sensitive_data_transfers_owner](https://registry.terraform.io/providers/hashicorp/aws/4.20.0/docs/resources/s3_bucket_ownership_controls) | resource |
| [aws_s3_bucket_policy.tfstate](https://registry.terraform.io/providers/hashicorp/aws/4.20.0/docs/resources/s3_bucket_policy) | resource |
| [aws_s3_bucket_public_access_block.sensitive_data_transfers_access_policy](https://registry.terraform.io/providers/hashicorp/aws/4.20.0/docs/resources/s3_bucket_public_access_block) | resource |
# Changelog
All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [1.0.0] - 12/04/2022
Initial Release

## [1.1.0] - 01/07/2022
Bug fixes and Access Analyzer added in the Foundation

