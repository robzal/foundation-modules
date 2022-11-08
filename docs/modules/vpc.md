
# Network Module
Provisions a VPC with:
1. A /16 CIDR range, with 9 or 12 (depending on number of AZs availible) /20 subnets (for public, private and secure).
2. Gateway endpoints for DynamoDB and S3.
3. Routing tables and NACLs that implements Itoc's public, private and secure subnet methodology.
4. NAT Gateways with Elastic IP Addresses for the private subnets.


## Input Variables
Check out `variables.tf` for a comprehensive list of variables and defaults. At the time of writing here are the ideal required variables in an example instantiation:
```hcl
module "vpc" {
    source = "path/to/this/module"
    naming_prefix = "customer-name" # Arbitrary prefix for all resources
    network_prefix = "10.0" # First 2 octets of VPC
}
```

## Outputs
Check `outputs.tf`

## Testing
See the _tests_ directory for a pre-made harness to see if the module plans/applies ok.
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.2.3 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | 4.20.0 |
## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_create_dynamo_gateway"></a> [create\_dynamo\_gateway](#input\_create\_dynamo\_gateway) | Create a Dynamo Gateway, defaults to true. | `bool` | `true` | no |
| <a name="input_create_s3_gateway"></a> [create\_s3\_gateway](#input\_create\_s3\_gateway) | Create an S3 Gateway, defaults to true. | `bool` | `true` | no |
| <a name="input_create_tgw"></a> [create\_tgw](#input\_create\_tgw) | Create a Transit Gateway and subnets for it. Default is false | `bool` | `false` | no |
| <a name="input_eks_public_nodes"></a> [eks\_public\_nodes](#input\_eks\_public\_nodes) | Controls whether to tag public subnets for EKS usage. Defaults to false. | `string` | `"false"` | no |
| <a name="input_enable_eks_tags"></a> [enable\_eks\_tags](#input\_enable\_eks\_tags) | Tag subnets with tags needed for EKS. Defaults to false. | `string` | `"false"` | no |
| <a name="input_flow_log_bucket_arn"></a> [flow\_log\_bucket\_arn](#input\_flow\_log\_bucket\_arn) | S3 bucket ARN of where to send flow logs. | `string` | `""` | no |
| <a name="input_instance_tenancy"></a> [instance\_tenancy](#input\_instance\_tenancy) | Instance tenancy for VPC | `string` | `"default"` | no |
| <a name="input_isolated_attach_id"></a> [isolated\_attach\_id](#input\_isolated\_attach\_id) | TGW attachment id of the isolated workload. Default is false | `string` | `""` | no |
| <a name="input_isolated_tgw_rt_tbl"></a> [isolated\_tgw\_rt\_tbl](#input\_isolated\_tgw\_rt\_tbl) | Provision transit Gateway isolated route table. Default is false | `bool` | `false` | no |
| <a name="input_naming_prefix"></a> [naming\_prefix](#input\_naming\_prefix) | Customer's name for prefixing resources, should be identitiy-workload, e.g. itoc-shared | `string` | n/a | yes |
| <a name="input_network_prefix"></a> [network\_prefix](#input\_network\_prefix) | First two octets for VPC IP range | `string` | n/a | yes |
| <a name="input_number_of_ngws"></a> [number\_of\_ngws](#input\_number\_of\_ngws) | Number of NAT Gateways to create, defaults to 0 | `number` | `0` | no |
| <a name="input_ram_invite_principals"></a> [ram\_invite\_principals](#input\_ram\_invite\_principals) | A list of principals to share TGW with. Possible values are an AWS account ID, an AWS Organizations Organization ARN, or an AWS Organizations Organization Unit ARN | `list(string)` | `[]` | no |
| <a name="input_ram_resource_share_arn"></a> [ram\_resource\_share\_arn](#input\_ram\_resource\_share\_arn) | ARN of RAM resource share. Default is Null | `string` | `null` | no |
| <a name="input_share_tgw"></a> [share\_tgw](#input\_share\_tgw) | Share the transit Gateway via RAM to the other workloads. Default is false | `bool` | `false` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | Additional tags to add to resources. Defaults to empty. | `map(string)` | `{}` | no |
| <a name="input_tgw_id"></a> [tgw\_id](#input\_tgw\_id) | The transit Gateway id for routing. Default is null | `string` | `null` | no |
| <a name="input_tgw_super_prefix"></a> [tgw\_super\_prefix](#input\_tgw\_super\_prefix) | Organisation Super net prefix. Default is 10.0.0.0/8 | `string` | `"10.0.0.0/8"` | no |
| <a name="input_vpc_cidr_block"></a> [vpc\_cidr\_block](#input\_vpc\_cidr\_block) | VPC Network CIDR block | `string` | `"16"` | no |
| <a name="input_vpc_interface_endpoints"></a> [vpc\_interface\_endpoints](#input\_vpc\_interface\_endpoints) | AWS services to create endpoints for. Defaults to none | `list(any)` | `[]` | no |
## Outputs

| Name | Description |
|------|-------------|
| <a name="output_private_rt_ids"></a> [private\_rt\_ids](#output\_private\_rt\_ids) | Private route table ids |
| <a name="output_private_subnet_cidrs"></a> [private\_subnet\_cidrs](#output\_private\_subnet\_cidrs) | Private subnet CIDR blocks created in the VPC |
| <a name="output_private_subnet_ids"></a> [private\_subnet\_ids](#output\_private\_subnet\_ids) | Private subnet ids created in the VPC |
| <a name="output_public_rt_ids"></a> [public\_rt\_ids](#output\_public\_rt\_ids) | Public route table ids |
| <a name="output_public_subnet_cidrs"></a> [public\_subnet\_cidrs](#output\_public\_subnet\_cidrs) | Public subnet CIDR blocks created in the VPC |
| <a name="output_public_subnet_ids"></a> [public\_subnet\_ids](#output\_public\_subnet\_ids) | Public subnet ids created in the VPC |
| <a name="output_ram_principal_association_id"></a> [ram\_principal\_association\_id](#output\_ram\_principal\_association\_id) | If variable `create_tgw` and `share_tgw` is true then The Amazon Resource Name (ARN) of the Resource Share and the principal, separated by a comma else empty string |
| <a name="output_ram_resource_share_id"></a> [ram\_resource\_share\_id](#output\_ram\_resource\_share\_id) | If variable `create_tgw` and `share_tgw` is true then The Amazon Resource Name (ARN) of the resource share else empty string |
| <a name="output_secure_rt_ids"></a> [secure\_rt\_ids](#output\_secure\_rt\_ids) | Secure route table ids |
| <a name="output_secure_subnet_cidrs"></a> [secure\_subnet\_cidrs](#output\_secure\_subnet\_cidrs) | Secure subnet CIDR blocks created in the VPC |
| <a name="output_secure_subnet_ids"></a> [secure\_subnet\_ids](#output\_secure\_subnet\_ids) | Secure subnet ids created in the VPC |
| <a name="output_subnet_ids"></a> [subnet\_ids](#output\_subnet\_ids) | All subnet ids created in the VPC |
| <a name="output_tgw_id"></a> [tgw\_id](#output\_tgw\_id) | If variable `create_tgw` is true then Transit Gateway Id else empty string. |
| <a name="output_tgw_iso_attachment_id"></a> [tgw\_iso\_attachment\_id](#output\_tgw\_iso\_attachment\_id) | If variable `create_tgw` is true then output the isolated attachment id else empty string |
| <a name="output_tgw_owner"></a> [tgw\_owner](#output\_tgw\_owner) | If variable `create_tgw` is true then Transit Gateway Owner Id else empty string. |
| <a name="output_tgw_shared_attachment_id"></a> [tgw\_shared\_attachment\_id](#output\_tgw\_shared\_attachment\_id) | If variable `create_tgw` is true then output the shared attachment id else empty string |
| <a name="output_tgw_wl_attachment_id"></a> [tgw\_wl\_attachment\_id](#output\_tgw\_wl\_attachment\_id) | If variable `create_tgw` is true then output the workload attachment id else empty string |
| <a name="output_vpc_cidr"></a> [vpc\_cidr](#output\_vpc\_cidr) | CIDR Block |
| <a name="output_vpc_id"></a> [vpc\_id](#output\_vpc\_id) | VPC Id |
## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 4.20.0 |
## Modules

No modules.
## Resources

| Name | Type |
|------|------|
| [aws_default_security_group.default](https://registry.terraform.io/providers/hashicorp/aws/4.20.0/docs/resources/default_security_group) | resource |
| [aws_ec2_transit_gateway.transit_gateway](https://registry.terraform.io/providers/hashicorp/aws/4.20.0/docs/resources/ec2_transit_gateway) | resource |
| [aws_ec2_transit_gateway_route_table.tgw_rt_tbl_isolated](https://registry.terraform.io/providers/hashicorp/aws/4.20.0/docs/resources/ec2_transit_gateway_route_table) | resource |
| [aws_ec2_transit_gateway_route_table_association.tgw_rt_assoc_iso_attach](https://registry.terraform.io/providers/hashicorp/aws/4.20.0/docs/resources/ec2_transit_gateway_route_table_association) | resource |
| [aws_ec2_transit_gateway_route_table_propagation.tgw_rt_prop_shared_iso](https://registry.terraform.io/providers/hashicorp/aws/4.20.0/docs/resources/ec2_transit_gateway_route_table_propagation) | resource |
| [aws_ec2_transit_gateway_route_table_propagation.tgw_rt_prop_wl_iso](https://registry.terraform.io/providers/hashicorp/aws/4.20.0/docs/resources/ec2_transit_gateway_route_table_propagation) | resource |
| [aws_ec2_transit_gateway_route_table_propagation.tgw_rt_prop_wl_iso_default](https://registry.terraform.io/providers/hashicorp/aws/4.20.0/docs/resources/ec2_transit_gateway_route_table_propagation) | resource |
| [aws_ec2_transit_gateway_vpc_attachment.isolated_attachment](https://registry.terraform.io/providers/hashicorp/aws/4.20.0/docs/resources/ec2_transit_gateway_vpc_attachment) | resource |
| [aws_ec2_transit_gateway_vpc_attachment.shared_attachment](https://registry.terraform.io/providers/hashicorp/aws/4.20.0/docs/resources/ec2_transit_gateway_vpc_attachment) | resource |
| [aws_ec2_transit_gateway_vpc_attachment.wl_attachment](https://registry.terraform.io/providers/hashicorp/aws/4.20.0/docs/resources/ec2_transit_gateway_vpc_attachment) | resource |
| [aws_ec2_transit_gateway_vpc_attachment_accepter.tgw_attach_accept_iso](https://registry.terraform.io/providers/hashicorp/aws/4.20.0/docs/resources/ec2_transit_gateway_vpc_attachment_accepter) | resource |
| [aws_eip.nat_gw_eips](https://registry.terraform.io/providers/hashicorp/aws/4.20.0/docs/resources/eip) | resource |
| [aws_flow_log.flow_log_all](https://registry.terraform.io/providers/hashicorp/aws/4.20.0/docs/resources/flow_log) | resource |
| [aws_internet_gateway.igw](https://registry.terraform.io/providers/hashicorp/aws/4.20.0/docs/resources/internet_gateway) | resource |
| [aws_nat_gateway.nat_gws](https://registry.terraform.io/providers/hashicorp/aws/4.20.0/docs/resources/nat_gateway) | resource |
| [aws_network_acl.private](https://registry.terraform.io/providers/hashicorp/aws/4.20.0/docs/resources/network_acl) | resource |
| [aws_network_acl.public](https://registry.terraform.io/providers/hashicorp/aws/4.20.0/docs/resources/network_acl) | resource |
| [aws_network_acl.secure](https://registry.terraform.io/providers/hashicorp/aws/4.20.0/docs/resources/network_acl) | resource |
| [aws_ram_principal_association.invite](https://registry.terraform.io/providers/hashicorp/aws/4.20.0/docs/resources/ram_principal_association) | resource |
| [aws_ram_resource_association.ram_tgw_assoc](https://registry.terraform.io/providers/hashicorp/aws/4.20.0/docs/resources/ram_resource_association) | resource |
| [aws_ram_resource_share.this](https://registry.terraform.io/providers/hashicorp/aws/4.20.0/docs/resources/ram_resource_share) | resource |
| [aws_ram_resource_share_accepter.receiver_accept](https://registry.terraform.io/providers/hashicorp/aws/4.20.0/docs/resources/ram_resource_share_accepter) | resource |
| [aws_route.private_to_ngw](https://registry.terraform.io/providers/hashicorp/aws/4.20.0/docs/resources/route) | resource |
| [aws_route.private_to_tgw](https://registry.terraform.io/providers/hashicorp/aws/4.20.0/docs/resources/route) | resource |
| [aws_route.public_to_igw](https://registry.terraform.io/providers/hashicorp/aws/4.20.0/docs/resources/route) | resource |
| [aws_route_table.private_route_tables](https://registry.terraform.io/providers/hashicorp/aws/4.20.0/docs/resources/route_table) | resource |
| [aws_route_table.public_route_tables](https://registry.terraform.io/providers/hashicorp/aws/4.20.0/docs/resources/route_table) | resource |
| [aws_route_table.secure_route_tables](https://registry.terraform.io/providers/hashicorp/aws/4.20.0/docs/resources/route_table) | resource |
| [aws_route_table_association.rt_assocations_private](https://registry.terraform.io/providers/hashicorp/aws/4.20.0/docs/resources/route_table_association) | resource |
| [aws_route_table_association.rt_assocations_public](https://registry.terraform.io/providers/hashicorp/aws/4.20.0/docs/resources/route_table_association) | resource |
| [aws_route_table_association.rt_assocations_secure](https://registry.terraform.io/providers/hashicorp/aws/4.20.0/docs/resources/route_table_association) | resource |
| [aws_security_group.aws_svc_endpoint_sg](https://registry.terraform.io/providers/hashicorp/aws/4.20.0/docs/resources/security_group) | resource |
| [aws_subnet.private_subnets](https://registry.terraform.io/providers/hashicorp/aws/4.20.0/docs/resources/subnet) | resource |
| [aws_subnet.public_subnets](https://registry.terraform.io/providers/hashicorp/aws/4.20.0/docs/resources/subnet) | resource |
| [aws_subnet.secure_subnets](https://registry.terraform.io/providers/hashicorp/aws/4.20.0/docs/resources/subnet) | resource |
| [aws_subnet.transit_subnets](https://registry.terraform.io/providers/hashicorp/aws/4.20.0/docs/resources/subnet) | resource |
| [aws_vpc.vpc](https://registry.terraform.io/providers/hashicorp/aws/4.20.0/docs/resources/vpc) | resource |
| [aws_vpc_endpoint.dynamodb](https://registry.terraform.io/providers/hashicorp/aws/4.20.0/docs/resources/vpc_endpoint) | resource |
| [aws_vpc_endpoint.endpoint](https://registry.terraform.io/providers/hashicorp/aws/4.20.0/docs/resources/vpc_endpoint) | resource |
| [aws_vpc_endpoint.s3](https://registry.terraform.io/providers/hashicorp/aws/4.20.0/docs/resources/vpc_endpoint) | resource |
| [aws_availability_zones.available](https://registry.terraform.io/providers/hashicorp/aws/4.20.0/docs/data-sources/availability_zones) | data source |
| [aws_region.current](https://registry.terraform.io/providers/hashicorp/aws/4.20.0/docs/data-sources/region) | data source |
# Changelog
All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [1.0.0] - 12/04/2022
Initial Release
### Added
- VPC creation
- Subnet creation
- NACL creation
- Route table creation
- NAT gateway creation (with EIPs)
- vpc endpoints for dynamo and s3
- test directory for above

## [1.1.0] - 01/07/2022
Bug fixes and Access Analyzer added in the Foundation

