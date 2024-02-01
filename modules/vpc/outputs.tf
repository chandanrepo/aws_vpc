# Output the ID of the created VPC
output "vpc_id" {
  value       = aws_vpc.main.id              # The ID of the VPC that was created
  description = "The ID of the VPC created."  # Description for the output
}