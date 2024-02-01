# Output the DNS name of the ELB
output "elb_dns_name" {
  value       = aws_elb.web.dns_name
  description = "The DNS name of the ELB."
}