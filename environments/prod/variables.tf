# Variable for the VPC CIDR block
variable "vpc_cidr" {
  description = "CIDR block for the VPC"
}

# Variables for public subnet CIDR blocks
variable "public_subnet_cidr_1" {
  description = "CIDR block for the first public subnet"
}

variable "public_subnet_cidr_2" {
  description = "CIDR block for the second public subnet"
}

# Variables for private subnet CIDR blocks
variable "private_subnet_cidr_1" {
  description = "CIDR block for the first private subnet"
}

variable "private_subnet_cidr_2" {
  description = "CIDR block for the second private subnet"
}

# Variable for the domain name used in Route 53
variable "domain_name" {
  description = "The domain name for the hosted zone in Route 53"
}