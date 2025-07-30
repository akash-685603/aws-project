variable "key_name" {
  description = "EC2 key pair name"
  type        = string
}

variable "subnet_id" {
  description = "Subnet ID for EC2 instance"
  type        = string
}

variable "vpc_id" {
  description = "VPC ID for security group"
  type        = string
}
