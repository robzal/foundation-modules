
# Itoc Access Roles
Itoc uses multiple roles to access customer environments. 
# ItocBilling Role
This access role is used as part of Itoc's Well Architected Reviews to provide recommendations based on the services utilised.
# ItocReadOnly Role
This access role is used as part of Itoc providing services to customers. Itoc staff are directed unless making changes to use the ItocReadOnly role. This role is also used by the Itoc Pre-sales team to help with providing recommendations and quoting work.
# ItocAdmin Role
This access role is used to make changes to customer accounts after discussion and planning of changes to be applied.
# ItocManagedServicesReadOnly
This access role is used by automated processes for the Itoc Cloud Operations team to provide monthly reporting and on going review of accounts.
# ItocPatching
This access role is used as part of monthly patching.
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.2.3 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | 4.20.0 |
## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_managed_services"></a> [managed\_services](#input\_managed\_services) | For managed services customers | `bool` | `false` | no |
| <a name="input_read_access"></a> [read\_access](#input\_read\_access) | Read only access | `bool` | `true` | no |
| <a name="input_write_access"></a> [write\_access](#input\_write\_access) | Gives Itoc Write access | `bool` | `false` | no |
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
| [aws_iam_role.itoc_admin](https://registry.terraform.io/providers/hashicorp/aws/4.20.0/docs/resources/iam_role) | resource |
| [aws_iam_role.itoc_billing](https://registry.terraform.io/providers/hashicorp/aws/4.20.0/docs/resources/iam_role) | resource |
| [aws_iam_role.itoc_managed_services_read_only](https://registry.terraform.io/providers/hashicorp/aws/4.20.0/docs/resources/iam_role) | resource |
| [aws_iam_role.itoc_patching](https://registry.terraform.io/providers/hashicorp/aws/4.20.0/docs/resources/iam_role) | resource |
| [aws_iam_role.itoc_readonly](https://registry.terraform.io/providers/hashicorp/aws/4.20.0/docs/resources/iam_role) | resource |
| [aws_iam_policy_document.itoc_control_plane_account](https://registry.terraform.io/providers/hashicorp/aws/4.20.0/docs/data-sources/iam_policy_document) | data source |
| [aws_iam_policy_document.itoc_identity_account](https://registry.terraform.io/providers/hashicorp/aws/4.20.0/docs/data-sources/iam_policy_document) | data source |
# Changelog
All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [1.0.0] - 12/04/2022
Initial Release

## [1.1.0] - 01/07/2022
Bug fixes and Access Analyzer added in the Foundation

