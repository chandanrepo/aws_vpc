output "hosted_zone_id" {
  value       = aws_route53_zone.main.zone_id
  description = "The ID of the Route 53 hosted zone."
}

output "cname_record" {
  value       = aws_route53_record.cname.name
  description = "The CNAME record for the ELB."
}