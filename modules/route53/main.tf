# Create a Route 53 hosted zone for your domain
resource "aws_route53_zone" "main" {
  name = var.domain_name  # The domain name for the hosted zone
}

# Create a CNAME record in the hosted zone pointing to an ELB
resource "aws_route53_record" "cname" {
  zone_id = aws_route53_zone.main.zone_id  # Reference to the hosted zone ID
  name    = "www.${var.domain_name}"       # Subdomain, e.g., www.example.com
  type    = "CNAME"                        # Record type
  ttl     = "300"                          # Time to live
  records = [var.elb_dns_name]             # ELB DNS name to point to
}