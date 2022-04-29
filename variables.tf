
# EC2
variable "bastion_name" {}
variable "jmpbox_name" {}
variable "ami_jmpbox_id" {}
variable "s3_bucket_zdh" {}
variable "instance_type" {}
variable "monitoring" {
  type = bool
}
variable "ami_bastion_id" {}
# VPC
variable "name_vpc" {}
variable "cidr_vpc" {}
variable "availability_zone_vpc" {
  type = list(string)
}
variable "public_subnet_vpc" {
  type = list(string)
}
variable "dns_hostnames_vpc" {
  type    = bool
  default = true
}
# SG
variable "ingress_from_myip" {}

# Tags
variable "tags_vpc" {
  type = map(any)
  default = {
    name    = "vpc_zdh"
    company = "ZDH"
    author  = "tisha"
  }
}
variable "tags_subnet_public" {
  type = map(any)
  default = {
    name    = "subnet_public"
    company = "ZDH"
    author  = "tisha"
  }
}
variable "tags_bastion" {
  type = map(any)
  default = {
    name    = "bastion"
    company = "ZDH"
    author  = "tisha"
  }
}
variable "tags_sg" {
  type = map(any)
  default = {
    name    = "security group"
    company = "ZDH"
    author  = "tisha"
  }
}