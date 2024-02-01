# Define the VPC
module "vpc_prod" {
  source     = "../../modules/vpc"
  cidr_block = var.vpc_cidr
}

# Define the first public subnet
module "public_subnet_prod_1" {
  source     = "../../modules/subnet"
  vpc_id     = module.vpc_prod.vpc_id
  cidr_block = var.public_subnet_cidr_1
  is_public  = true
}

# Define the second public subnet
module "public_subnet_prod_2" {
  source     = "../../modules/subnet"
  vpc_id     = module.vpc_prod.vpc_id
  cidr_block = var.public_subnet_cidr_2
  is_public  = true
}

# Define the first private subnet
module "private_subnet_prod_1" {
  source     = "../../modules/subnet"
  vpc_id     = module.vpc_prod.vpc_id
  cidr_block = var.private_subnet_cidr_1
  is_public  = false
}

# Define the second private subnet
module "private_subnet_prod_2" {
  source     = "../../modules/subnet"
  vpc_id     = module.vpc_prod.vpc_id
  cidr_block = var.private_subnet_cidr_2
  is_public  = false
}

# Define the security group
module "security_group_prod" {
  source  = "../../modules/security_group"
  vpc_id = module.vpc_prod.vpc_id
}

# Define the ELB
module "elb_prod" {
  source            = "../../modules/elb"
  subnets           = [module.public_subnet_prod_1.subnet_id, module.public_subnet_prod_2.subnet_id]
  security_group_id = module.security_group_prod.security_group_id
}

# Define the Route 53 hosted zone and CNAME entry for ELB
module "route53_prod" {
  source       = "../../modules/route53"
  domain_name  = var.domain_name
  elb_endpoint = module.elb_prod.elb_dns_name
}

module "prod_asg" {
  source = "../../modules/asg"

  image_id     = "ami-123456"  # Replace with your AMI ID
  instance_type = "t2.micro"
  min_size      = 1
  max_size      = 3
  subnet_ids    = [module.vpc_prod.public_subnet_ids]  # Replace with actual subnet IDs or reference
}