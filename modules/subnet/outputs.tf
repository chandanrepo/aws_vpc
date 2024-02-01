# Output the IDs of the public subnets
output "public_subnet_ids" {
  value = aws_subnet.public[*].id
  description = "List of IDs for the public subnets."
}

# Output the IDs of the private subnets
output "private_subnet_ids" {
  value = aws_subnet.private[*].id
  description = "List of IDs for the private subnets."
}