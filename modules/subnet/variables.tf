# Variable for the VPC ID
variable "vpc_id" {
  description = "The ID of the VPC where subnets will be created."
  type        = string
}

# Variable for public subnet CIDR blocks
variable "public_subnets_cidr" {
  description = "List of CIDR blocks for public subnets."
  type        = list(string)
}

# Variable for private subnet CIDR blocks
variable "private_subnets_cidr" {
  description = "List of CIDR blocks for private subnets."
  type        = list(string)
}

# Variable for specifying availability zones
variable "availability_zones" {
  description = "List of availability zones in which to create subnets."
  type        = list(string)
}