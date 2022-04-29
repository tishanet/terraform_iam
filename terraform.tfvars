# Common
bastion_name = "bastion"
jmpbox_name  = "jmpbox"

ami_bastion_id = "ami-04505e74c0741db8d" #Ubuntu Server 20.04 LTS (HVM), SSD Volume Type
ami_jmpbox_id  = "ami-07d02ee1eeb0c996c" #Debian 10 (HVM), SSD Volume Type
instance_type  = "t3.micro"
monitoring     = false

# VPC
name_vpc              = "vpc_zdh"
cidr_vpc              = "10.10.0.0/16"
availability_zone_vpc = ["us-east-1a"]
public_subnet_vpc     = ["10.10.10.0/24"]

# Security group
ingress_from_myip = ["46.128.44.51/32"]

# S3
s3_bucket_zdh = "zdh.bucket.main"
