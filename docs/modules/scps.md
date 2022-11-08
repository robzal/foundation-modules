
# AWS Organizational SCPs
Creates AWS Service control policies (SCPs) to Itoc Cloud Foundation standard.

Must be called in Main Organization AWS account.
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.2.3 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | 4.20.0 |
## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_root_ou_id"></a> [root\_ou\_id](#input\_root\_ou\_id) | Root AWS Organization ID | `string` | n/a | yes |
| <a name="input_security_ou_id"></a> [security\_ou\_id](#input\_security\_ou\_id) | Security OU ID | `string` | n/a | yes |
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
| [aws_organizations_policy.protect_root_ou](https://registry.terraform.io/providers/hashicorp/aws/4.20.0/docs/resources/organizations_policy) | resource |
| [aws_organizations_policy.protect_security_ou](https://registry.terraform.io/providers/hashicorp/aws/4.20.0/docs/resources/organizations_policy) | resource |
| [aws_organizations_policy_attachment.protect_root_ou_attach](https://registry.terraform.io/providers/hashicorp/aws/4.20.0/docs/resources/organizations_policy_attachment) | resource |
| [aws_organizations_policy_attachment.protect_security_ou_attach](https://registry.terraform.io/providers/hashicorp/aws/4.20.0/docs/resources/organizations_policy_attachment) | resource |
# Changelog
All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [1.0.0] - 12/04/2022
Initial Release

## [1.1.0] - 01/07/2022
Bug fixes and Access Analyzer added in the Foundation

