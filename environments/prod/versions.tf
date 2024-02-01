terraform {
  required_version = ">= 0.14"  # Specify the minimum Terraform version

  required_providers {
    aws = {
      source  = "hashicorp/aws"  # The source of the AWS provider
      version = "5.34.0"         # The version constraint for the AWS provider
    }
  }
}