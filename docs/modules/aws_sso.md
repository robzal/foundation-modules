
# AWS SSO Configuration
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.2.3 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | 4.20.0 |
## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_account_assignments"></a> [account\_assignments](#input\_account\_assignments) | TBA | <pre>list(object({<br>    sso_group_name      = string,<br>    permission_set_name = string,<br>    account_ids         = list(string)<br>  }))</pre> | `[]` | no |
| <a name="input_permission_sets"></a> [permission\_sets](#input\_permission\_sets) | AWS SSO Permission Sets to create. | <pre>map(object({<br>    description      = string<br>    session_duration = string<br>    managed_policies = list(string)<br>    inline_policy    = string<br>  }))</pre> | <pre>{<br>  "AdministratorAccess": {<br>    "description": "Provides full access to AWS services and resources.",<br>    "inline_policy": "",<br>    "managed_policies": [<br>      "arn:aws:iam::aws:policy/AdministratorAccess"<br>    ],<br>    "session_duration": "PT12H"<br>  }<br>}</pre> | no |
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
| [aws_ssoadmin_account_assignment.this](https://registry.terraform.io/providers/hashicorp/aws/4.20.0/docs/resources/ssoadmin_account_assignment) | resource |
| [aws_ssoadmin_managed_policy_attachment.this](https://registry.terraform.io/providers/hashicorp/aws/4.20.0/docs/resources/ssoadmin_managed_policy_attachment) | resource |
| [aws_ssoadmin_permission_set.this](https://registry.terraform.io/providers/hashicorp/aws/4.20.0/docs/resources/ssoadmin_permission_set) | resource |
| [aws_ssoadmin_permission_set_inline_policy.this](https://registry.terraform.io/providers/hashicorp/aws/4.20.0/docs/resources/ssoadmin_permission_set_inline_policy) | resource |
| [aws_identitystore_group.this](https://registry.terraform.io/providers/hashicorp/aws/4.20.0/docs/data-sources/identitystore_group) | data source |
| [aws_ssoadmin_instances.this](https://registry.terraform.io/providers/hashicorp/aws/4.20.0/docs/data-sources/ssoadmin_instances) | data source |
# Changelog
All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [1.0.0] - 12/04/2022
Initial Release

## [1.1.0] - 01/07/2022
Bug fixes and Access Analyzer added in the Foundation

