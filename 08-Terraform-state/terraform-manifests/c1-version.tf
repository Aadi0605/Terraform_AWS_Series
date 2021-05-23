# Terraform Block
terraform {
  required_version = "~> 0.14" # which means any version equal and above >= 0.14 used for_each meta argument
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }


# Terraform Backend Block
  backend "s3" {
    bucket = "terraform-stacksimplify"
    key    = "dev/terraform.tfstate"
    region = "us-east-1"    
  }
}

# Provider Block
provider "aws" {
  region  = var.aws_region
}