# Create a VPC with the specified CIDR block
resource "aws_vpc" "main" {
  cidr_block           = var.cidr_block  # Use the variable for CIDR block
  enable_dns_support   = true            # Enable DNS support within the VPC
  enable_dns_hostnames = true            # Enable DNS hostnames within the VPC

  tags = {
    Name = "ProdVPC"                     # Assign a name to the VPC for identification
  }
}