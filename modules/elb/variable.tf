# Subnets for the ELB
variable "subnets" {
  description = "A list of subnet IDs to attach to the ELB."
  type        = list(string)
}

# Security group for the ELB
variable "security_group_id" {
  description = "The ID of the security group to associate with the ELB."
  type        = string
}