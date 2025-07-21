terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }


  backend "s3" {
    bucket = "reddys120"
    key    = "expense-backend-infra" #you should havea unique key with in the bucket, same key should not be used in other repos or tf projects.
    region = "us-east-1"
    dynamodb_table = "state-locking"
  }
}




# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
}

# Create a VPC
resource "aws_vpc" "example" {
  cidr_block = "10.0.0.0/16"
}