terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }

  backend "s3" {
    bucket         = "remote-state-development"
    key            = "expense-securitygroup" #you should have unique key with in the bucket, same key should not be used in other repos or tf projects.
    region         = "us-east-1"
    dynamodb_table = "remote-state-development"
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
}