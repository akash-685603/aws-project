terraform {
  backend "s3" {
    bucket         = "terraform-state-locking-bucket-akash"
    key            = "ci-cd/codepipeline-project/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform-lock-table"
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}
