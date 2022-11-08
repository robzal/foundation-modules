
# AWS Backup Policy Module
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.2.3 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | 4.20.0 |
## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_aws_backup_role_name"></a> [aws\_backup\_role\_name](#input\_aws\_backup\_role\_name) | AWS IAM Role Name that is provisioned into each account to run backups. | `string` | `"aws-backup"` | no |
| <a name="input_backup_cron_schedule"></a> [backup\_cron\_schedule](#input\_backup\_cron\_schedule) | Cron schedules specified in UTC timezone. https://docs.aws.amazon.com/AmazonCloudWatch/latest/events/ScheduledEvents.html | <pre>object({<br>    daily   = string<br>    weekly  = string<br>    monthly = string<br>    yearly  = string<br>  })</pre> | <pre>{<br>  "daily": "cron(0 15 ? * * *)",<br>  "monthly": "cron(0 21 ? * 1#1 *)",<br>  "weekly": "cron(0 18 ? * 1 *)",<br>  "yearly": "cron(0 12 1 1 ? *)"<br>}</pre> | no |
| <a name="input_organisational_units"></a> [organisational\_units](#input\_organisational\_units) | AWS Organizational Units to apply AWS Backup policies to. | `list(string)` | n/a | yes |
| <a name="input_region"></a> [region](#input\_region) | AWS Region to enable | `string` | n/a | yes |
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
| [aws_organizations_policy.this](https://registry.terraform.io/providers/hashicorp/aws/4.20.0/docs/resources/organizations_policy) | resource |
| [aws_organizations_policy_attachment.this](https://registry.terraform.io/providers/hashicorp/aws/4.20.0/docs/resources/organizations_policy_attachment) | resource |
# Changelog
All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [1.0.0] - 12/04/2022
Initial Release

## [1.1.0] - 01/07/2022
Bug fixes and Access Analyzer added in the Foundation

