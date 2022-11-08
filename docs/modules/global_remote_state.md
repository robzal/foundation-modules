

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
| <a name="input_regions_to_enable"></a> [regions\_to\_enable](#input\_regions\_to\_enable) | Secondary regions to enable for Terraform Remote State. | `list(string)` | `[]` | no |
## Outputs

No outputs.
## Providers

No providers.
## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_remote_state_ap_northeast_1"></a> [remote\_state\_ap\_northeast\_1](#module\_remote\_state\_ap\_northeast\_1) | git@github.com:robzal/foundation-modules.git//src/modules/remote_state | v1.1.0 |
| <a name="module_remote_state_ap_northeast_2"></a> [remote\_state\_ap\_northeast\_2](#module\_remote\_state\_ap\_northeast\_2) | git@github.com:robzal/foundation-modules.git//src/modules/remote_state | v1.1.0 |
| <a name="module_remote_state_ap_northeast_3"></a> [remote\_state\_ap\_northeast\_3](#module\_remote\_state\_ap\_northeast\_3) | git@github.com:robzal/foundation-modules.git//src/modules/remote_state | v1.1.0 |
| <a name="module_remote_state_ap_south_1"></a> [remote\_state\_ap\_south\_1](#module\_remote\_state\_ap\_south\_1) | git@github.com:robzal/foundation-modules.git//src/modules/remote_state | v1.1.0 |
| <a name="module_remote_state_ap_southeast_1"></a> [remote\_state\_ap\_southeast\_1](#module\_remote\_state\_ap\_southeast\_1) | git@github.com:robzal/foundation-modules.git//src/modules/remote_state | v1.1.0 |
| <a name="module_remote_state_ap_southeast_2"></a> [remote\_state\_ap\_southeast\_2](#module\_remote\_state\_ap\_southeast\_2) | git@github.com:robzal/foundation-modules.git//src/modules/remote_state | v1.1.0 |
| <a name="module_remote_state_ca_central_1"></a> [remote\_state\_ca\_central\_1](#module\_remote\_state\_ca\_central\_1) | git@github.com:robzal/foundation-modules.git//src/modules/remote_state | v1.1.0 |
| <a name="module_remote_state_eu_central_1"></a> [remote\_state\_eu\_central\_1](#module\_remote\_state\_eu\_central\_1) | git@github.com:robzal/foundation-modules.git//src/modules/remote_state | v1.1.0 |
| <a name="module_remote_state_eu_north_1"></a> [remote\_state\_eu\_north\_1](#module\_remote\_state\_eu\_north\_1) | git@github.com:robzal/foundation-modules.git//src/modules/remote_state | v1.1.0 |
| <a name="module_remote_state_eu_west_1"></a> [remote\_state\_eu\_west\_1](#module\_remote\_state\_eu\_west\_1) | git@github.com:robzal/foundation-modules.git//src/modules/remote_state | v1.1.0 |
| <a name="module_remote_state_eu_west_2"></a> [remote\_state\_eu\_west\_2](#module\_remote\_state\_eu\_west\_2) | git@github.com:robzal/foundation-modules.git//src/modules/remote_state | v1.1.0 |
| <a name="module_remote_state_eu_west_3"></a> [remote\_state\_eu\_west\_3](#module\_remote\_state\_eu\_west\_3) | git@github.com:robzal/foundation-modules.git//src/modules/remote_state | v1.1.0 |
| <a name="module_remote_state_sa_east_1"></a> [remote\_state\_sa\_east\_1](#module\_remote\_state\_sa\_east\_1) | git@github.com:robzal/foundation-modules.git//src/modules/remote_state | v1.1.0 |
| <a name="module_remote_state_us_east_1"></a> [remote\_state\_us\_east\_1](#module\_remote\_state\_us\_east\_1) | git@github.com:robzal/foundation-modules.git//src/modules/remote_state | v1.1.0 |
| <a name="module_remote_state_us_east_2"></a> [remote\_state\_us\_east\_2](#module\_remote\_state\_us\_east\_2) | git@github.com:robzal/foundation-modules.git//src/modules/remote_state | v1.1.0 |
| <a name="module_remote_state_us_west_1"></a> [remote\_state\_us\_west\_1](#module\_remote\_state\_us\_west\_1) | git@github.com:robzal/foundation-modules.git//src/modules/remote_state | v1.1.0 |
| <a name="module_remote_state_us_west_2"></a> [remote\_state\_us\_west\_2](#module\_remote\_state\_us\_west\_2) | git@github.com:robzal/foundation-modules.git//src/modules/remote_state | v1.1.0 |
## Resources

No resources.
# Changelog
All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [1.0.0] - 12/04/2022
Initial Release

## [1.1.0] - 01/07/2022
Bug fixes and Access Analyzer added in the Foundation

