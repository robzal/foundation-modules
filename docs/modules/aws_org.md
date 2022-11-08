
# AWS Organisation Terraform Module
Creates an AWS Oragnisation account structure in line with the Well Architected Framework:
1. AWS Organisation
2. OUs
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.2.3 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | 4.20.0 |
## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_standard_ous"></a> [standard\_ous](#input\_standard\_ous) | List of standard OUs as per Well Architected Framework, defaults to https://docs.aws.amazon.com/whitepapers/latest/organizing-your-aws-environment/recommended-ous.html (Accessed Nov 2021) | `list(any)` | <pre>[<br>  "Security",<br>  "Infrastructure",<br>  "Sandbox",<br>  "Workloads",<br>  "Policy Staging",<br>  "Suspended",<br>  "Individual Business Users",<br>  "Exceptions",<br>  "Deployments",<br>  "Transitional"<br>]</pre> | no |
## Outputs

| Name | Description |
|------|-------------|
| <a name="output_accounts_map"></a> [accounts\_map](#output\_accounts\_map) | List of all accounts and a mapping from account name to AWS Account Id |
| <a name="output_all_account_ids"></a> [all\_account\_ids](#output\_all\_account\_ids) | All AWS Account Ids in the AWS Organization |
| <a name="output_aws_org_id"></a> [aws\_org\_id](#output\_aws\_org\_id) | AWS Organization Id |
| <a name="output_infrastructure_accounts"></a> [infrastructure\_accounts](#output\_infrastructure\_accounts) | AWS Account Ids in the Security OU |
| <a name="output_infrastructure_ou_id"></a> [infrastructure\_ou\_id](#output\_infrastructure\_ou\_id) | AWS Organization Organizational Unit Id for the Infrastructure OU |
| <a name="output_org_root_id"></a> [org\_root\_id](#output\_org\_root\_id) | AWS Organization Root Id |
| <a name="output_security_accounts"></a> [security\_accounts](#output\_security\_accounts) | AWS Organization Organizational Unit Id for the Security OU |
| <a name="output_security_ou_id"></a> [security\_ou\_id](#output\_security\_ou\_id) | AWS Organization Organizational Unit Id for the Security OU |
| <a name="output_standard_ous"></a> [standard\_ous](#output\_standard\_ous) | AWS Organization Standard Organizational Units |
| <a name="output_workload_accounts"></a> [workload\_accounts](#output\_workload\_accounts) | AWS Account Ids in the Workloads OU |
| <a name="output_workload_ou_id"></a> [workload\_ou\_id](#output\_workload\_ou\_id) | AWS Organization Organizational Unit Id for the Workloads OU |
## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 4.20.0 |
## Modules

No modules.
## Resources

| Name | Type |
|------|------|
| [aws_organizations_organization.org](https://registry.terraform.io/providers/hashicorp/aws/4.20.0/docs/resources/organizations_organization) | resource |
| [aws_organizations_organizational_unit.standard_ous](https://registry.terraform.io/providers/hashicorp/aws/4.20.0/docs/resources/organizations_organizational_unit) | resource |
# Changelog
All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [1.0.0] - 12/04/2022
Initial Release

## [1.1.0] - 01/07/2022
Bug fixes and Access Analyzer added in the Foundation

