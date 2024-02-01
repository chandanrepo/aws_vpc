# Define a resource for public subnet creation
resource "aws_subnet" "public" {
  count                   = length(var.public_subnets_cidr) # Create multiple subnets based on input list
  vpc_id                  = var.vpc_id                      # VPC ID where the subnet will reside
  cidr_block              = var.public_subnets_cidr[count.index] # CIDR block for the subnet
  availability_zone       = var.availability_zones[count.index] # Availability Zone for the subnet
  map_public_ip_on_launch = true                              # Enable auto-assign public IP

  tags = {
    Name = "PublicSubnet-${count.index + 1}"
  }
}

# Define a resource for private subnet creation
resource "aws_subnet" "private" {
  count             = length(var.private_subnets_cidr) # Create multiple subnets based on input list
  vpc_id            = var.vpc_id                        # VPC ID where the subnet will reside
  cidr_block        = var.private_subnets_cidr[count.index] # CIDR block for the subnet
  availability_zone = var.availability_zones[count.index]   # Availability Zone for the subnet

  tags = {
    Name = "PrivateSubnet-${count.index + 1}"
  }
}