# Cloud Foundation EC2 SSM Bastion
Creates an EC2 instance to act as a jumpbox/bastion into VPC via SSM.

## Example usage
```hcl
module "ec2_bastion" {
  source = "git@github.com:robzal/foundation-modules.git//src/modules/modules/ec2_bastion"

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
