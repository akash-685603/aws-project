variable "region" {
  default = "us-east-1"
}

variable "ami_id" {
  description = "AMI ID for EC2 instance"
}

variable "instance_type" {
  default = "t2.micro"
}

variable "key_name" {
  description = "EC2 key pair name"
}

variable "vpc_id" {
  description = "VPC ID for security group"
}

variable "subnet_id" {
  description = "Subnet ID for EC2 instance"
}
