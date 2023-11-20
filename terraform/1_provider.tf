
provider "aws" {
  region = "us-east-1"
}

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
  backend "s3" {
    bucket = "yzjcloud-tf-remote1"
    key = "eks-ec2.tfstate"
    region = "us-east-1"
    
  }
}