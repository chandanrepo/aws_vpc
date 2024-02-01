variable "image_id" {
  description = "AMI ID for the instances."
}

variable "instance_type" {
  description = "Type of instance to launch."
}

variable "min_size" {
  description = "Minimum size of the ASG."
}

variable "max_size" {
  description = "Maximum size of the ASG."
}

variable "subnet_ids" {
  description = "List of subnet IDs for the ASG."
  type        = list(string)
}