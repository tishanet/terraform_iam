module "ec2_bastion" {
  source = "terraform-aws-modules/ec2-instance/aws"
  name   = var.bastion_name

  ami                    = var.ami_bastion_id
  instance_type          = var.instance_type
  key_name               = data.aws_key_pair.bastion.key_name
  monitoring             = var.monitoring
  root_block_device      = [{ volume_size = 10 }]
  vpc_security_group_ids = [module.bastion_sg.security_group_id]
  subnet_id              = module.vpc_zdh.public_subnets[0]
  tags                   = var.tags_bastion
}

module "ec2_jmpbox" {
  source = "terraform-aws-modules/ec2-instance/aws"
  name   = var.jmpbox_name

  ami                    = var.ami_jmpbox_id
  instance_type          = var.instance_type
  key_name               = data.aws_key_pair.bastion.key_name
  monitoring             = var.monitoring
  root_block_device      = [{ volume_size = 8 }]
  vpc_security_group_ids = [module.bastion_sg.security_group_id]
  subnet_id              = module.vpc_zdh.public_subnets[0]
}

output "bastion_public_ip" {
  value = module.ec2_bastion.public_dns

}