
# Cloud Foundation EC2 SSM Bastion
Creates an EC2 instance to act as a jumpbox/bastion into VPC via SSM.

## Example usage
```hcl
module "ec2_bastion" {
  source = "git@github.com:robzal/foundation_modules.git//src/modules/modules/ec2_bastion"

  customer_prefix = var.customer_prefix
  subnet          = module.vpc.private_subnet_ids[0]
  security_groups = [
    aws_security_group.bastion_sg.id
  ]
}

# Supporting 
resource "aws_security_group" "bastion_sg" {
  name        = "${var.customer_prefix}-bastion-sg"
  description = "Allow outbound traffic."
  vpc_id      = module.vpc.vpc_id

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = "${var.customer_prefix}-bastion-sg"
  }
}

```
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.2.3 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | 4.20.0 |
## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_ami_id"></a> [ami\_id](#input\_ami\_id) | Custom AMI to launch instance with. Defaults to latest Amazon Linux 2. | `string` | `""` | no |
| <a name="input_customer_prefix"></a> [customer\_prefix](#input\_customer\_prefix) | String to prefix resources with. | `string` | n/a | yes |
| <a name="input_ebs_size"></a> [ebs\_size](#input\_ebs\_size) | Size in GiB of root EBS volume, defaults to 20. | `number` | `20` | no |
| <a name="input_ebs_type"></a> [ebs\_type](#input\_ebs\_type) | EBS Volume type to use, defaults to gp3 | `string` | `"gp3"` | no |
| <a name="input_instance_type"></a> [instance\_type](#input\_instance\_type) | EC2 instance type to launch, defaults to t3.micro | `string` | `"t3.micro"` | no |
| <a name="input_publicly_accessible"></a> [publicly\_accessible](#input\_publicly\_accessible) | Determines if instance is publicy accessible (assinges EIP), defaults to false. | `bool` | `false` | no |
| <a name="input_security_groups"></a> [security\_groups](#input\_security\_groups) | List of security group IDs to attach to bastion. | `list(any)` | `[]` | no |
| <a name="input_subnet"></a> [subnet](#input\_subnet) | VPC Subnet to launch instance into. | `string` | n/a | yes |
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
| [aws_eip.bastion_eip](https://registry.terraform.io/providers/hashicorp/aws/4.20.0/docs/resources/eip) | resource |
| [aws_eip_association.bastion_eip_association](https://registry.terraform.io/providers/hashicorp/aws/4.20.0/docs/resources/eip_association) | resource |
| [aws_iam_instance_profile.bastion_profile](https://registry.terraform.io/providers/hashicorp/aws/4.20.0/docs/resources/iam_instance_profile) | resource |
| [aws_iam_policy_attachment.ssm_bastion_policy_attach_core](https://registry.terraform.io/providers/hashicorp/aws/4.20.0/docs/resources/iam_policy_attachment) | resource |
| [aws_iam_policy_attachment.ssm_bastion_policy_attach_ec2roleforssm](https://registry.terraform.io/providers/hashicorp/aws/4.20.0/docs/resources/iam_policy_attachment) | resource |
| [aws_iam_role.bastion_ssm_role](https://registry.terraform.io/providers/hashicorp/aws/4.20.0/docs/resources/iam_role) | resource |
| [aws_instance.bastion_instance](https://registry.terraform.io/providers/hashicorp/aws/4.20.0/docs/resources/instance) | resource |
| [aws_ami.amazon_linux_2](https://registry.terraform.io/providers/hashicorp/aws/4.20.0/docs/data-sources/ami) | data source |
# Changelog
All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [1.0.0] - 12/04/2022
Initial Release

## [1.1.0] - 01/07/2022
Bug fixes and Access Analyzer added in the Foundation

