variable "domain_name" {
  description = "The domain name for the Route 53 hosted zone."
  type        = string
}

variable "elb_dns_name" {
  description = "The DNS name of the Elastic Load Balancer to point the CNAME record to."
  type        = string
}