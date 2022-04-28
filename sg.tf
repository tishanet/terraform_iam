module "bastion_sg" {
  source = "terraform-aws-modules/security-group/aws"
  vpc_id = module.vpc_zdh.vpc_id
  name   = "bastion_sg"

  ingress_cidr_blocks = var.ingress_from_myip
  ingress_rules       = ["ssh-tcp"]
  egress_rules        = ["all-all"]
  tags                = var.tags_sg
}