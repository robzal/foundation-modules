
# AWS Account Module
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.2.3 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | 4.20.0 |
| <a name="requirement_time"></a> [time](#requirement\_time) | 0.7.2 |
## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_account_email"></a> [account\_email](#input\_account\_email) | Email address for account | `string` | n/a | yes |
| <a name="input_account_name"></a> [account\_name](#input\_account\_name) | Human friendly name of account | `string` | n/a | yes |
| <a name="input_additonal_tags"></a> [additonal\_tags](#input\_additonal\_tags) | Additional tags to add to account. | `map(any)` | `{}` | no |
| <a name="input_aws_region"></a> [aws\_region](#input\_aws\_region) | AWS Region to set up account for | `string` | n/a | yes |
| <a name="input_billing_contact"></a> [billing\_contact](#input\_billing\_contact) | Map with email address, phone number, name and title for account billing contact | `map(string)` | <pre>{<br>  "email": "",<br>  "name": "",<br>  "phone_number": "",<br>  "title": ""<br>}</pre> | no |
| <a name="input_enable_itoc_managed_services_access"></a> [enable\_itoc\_managed\_services\_access](#input\_enable\_itoc\_managed\_services\_access) | Enable Itoc Managed Services Access | `bool` | `false` | no |
| <a name="input_enable_itoc_read_access"></a> [enable\_itoc\_read\_access](#input\_enable\_itoc\_read\_access) | Enable Itoc Read Only Access | `bool` | `false` | no |
| <a name="input_enable_itoc_write_access"></a> [enable\_itoc\_write\_access](#input\_enable\_itoc\_write\_access) | Enable Itoc Admin Access | `bool` | `false` | no |
| <a name="input_github_repository_path"></a> [github\_repository\_path](#input\_github\_repository\_path) | Needed if grant\_github\_access is true - GitHub Repository path to allow access to deploy into accounts. eg. org/repo | `string` | `""` | no |
| <a name="input_grant_github_access"></a> [grant\_github\_access](#input\_grant\_github\_access) | Grant GitHub OIDC access to Foundation-ReadOnly and Foundation-Write roles | `bool` | `false` | no |
| <a name="input_iam_user_access_to_billing"></a> [iam\_user\_access\_to\_billing](#input\_iam\_user\_access\_to\_billing) | Whether IAM users have access to billing. Defaults to true | `bool` | `true` | no |
| <a name="input_operations_contact"></a> [operations\_contact](#input\_operations\_contact) | Map with email address, phone number, name and title for account operations contact | `map(string)` | <pre>{<br>  "email": "",<br>  "name": "",<br>  "phone_number": "",<br>  "title": ""<br>}</pre> | no |
| <a name="input_parent_id"></a> [parent\_id](#input\_parent\_id) | Parent AWS Org/OU for account to go under. | `string` | n/a | yes |
| <a name="input_role_name"></a> [role\_name](#input\_role\_name) | Name of IAM role to be created that is trusted from Main account. Defaults to AWSOrgAdmin | `string` | `"AWSOrgAdmin"` | no |
| <a name="input_security_contact"></a> [security\_contact](#input\_security\_contact) | Map with email address, phone number, name and title for account security contact | `map(string)` | <pre>{<br>  "email": "",<br>  "name": "",<br>  "phone_number": "",<br>  "title": ""<br>}</pre> | no |
## Outputs

| Name | Description |
|------|-------------|
| <a name="output_account_arn"></a> [account\_arn](#output\_account\_arn) | The AWS Account ARN of the created account. |
| <a name="output_account_id"></a> [account\_id](#output\_account\_id) | The AWS Account Id of the created account. |
| <a name="output_account_org_admin_role"></a> [account\_org\_admin\_role](#output\_account\_org\_admin\_role) | The AWS Account Org Admin IAM Role of the created account. This role trusts the main account and has administrator privileges. |
## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 4.20.0 |
| <a name="provider_aws.member"></a> [aws.member](#provider\_aws.member) | 4.20.0 |
| <a name="provider_time"></a> [time](#provider\_time) | 0.7.2 |
## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_github_access"></a> [github\_access](#module\_github\_access) | git@github.com:robzal/foundation_modules.git//src/modules/github_oidc_aws_access | latest |
| <a name="module_itoc_access"></a> [itoc\_access](#module\_itoc\_access) | git@github.com:robzal/foundation_modules.git//src/modules/itoc_access | latest |
## Resources

| Name | Type |
|------|------|
| [aws_account_alternate_contact.billing](https://registry.terraform.io/providers/hashicorp/aws/4.20.0/docs/resources/account_alternate_contact) | resource |
| [aws_account_alternate_contact.operations](https://registry.terraform.io/providers/hashicorp/aws/4.20.0/docs/resources/account_alternate_contact) | resource |
| [aws_account_alternate_contact.security](https://registry.terraform.io/providers/hashicorp/aws/4.20.0/docs/resources/account_alternate_contact) | resource |
| [aws_organizations_account.account](https://registry.terraform.io/providers/hashicorp/aws/4.20.0/docs/resources/organizations_account) | resource |
| [time_sleep.account_init_sleep](https://registry.terraform.io/providers/hashicorp/time/0.7.2/docs/resources/sleep) | resource |
# Changelog
All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [1.0.0] - 12/04/2022
Initial Release

## [1.1.0] - 01/07/2022
Bug fixes and Access Analyzer added in the Foundation

