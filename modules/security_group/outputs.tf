# Output the ID of the created security group
output "security_group_id" {
  value       = aws_security_group.web.id
  description = "The ID of the security group for web access."
}