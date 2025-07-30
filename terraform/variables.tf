variable "key_name" {
  description = "EC2 key pair name"
  type        = string
}

variable "subnet_ids" {
  description = "List of Subnet IDs for EC2 instances"
  type        = list(string)
}

variable "vpc_id" {
  description = "VPC ID for security group"
  type        = string
}

variable "ami_id" {
  description = "The AMI ID for the EC2 instance"
  type        = string
  default     = "ami-0c02fb55956c7d316"
}
