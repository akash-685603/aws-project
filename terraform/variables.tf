variable "region" {
  description = "AWS region to deploy resources in"
  type        = string
  default     = "us-east-1"
}

variable "ami_id" {
  description = "AMI ID for EC2 instance (Amazon Linux 2 for us-east-1)"
  type        = string
  default     = "ami-051f8a213df8bc089"
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t2.micro"
}

variable "key_name" {
  description = "Name of the EC2 key pair to SSH into the instance"
  type        = string
}

variable "vpc_id" {
  description = "VPC ID where EC2 instance will be launched"
  type        = string
}

variable "subnet_id" {
  description = "Subnet ID within the VPC to launch the EC2 instance"
  type        = string
}
