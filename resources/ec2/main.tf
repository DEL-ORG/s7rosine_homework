terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.44.0"
    }
  }
}

provider "aws" {
  region = local.aws_region
}

locals {
  aws_region = "us-east-1"

  common_tags = {
    Name = "s7rosine-ec2"
    environment = "staging"
    owner       = "katya"
    project     = "healthcare"
    create_by   = "Terraform"
    cloud_provider = "aws"
    company     = "EKS"
}
}

module "ec2_instance" {
  source = "../../module/EC2-code1"
}
  #aws_region  = local.aws_region
  #common_tags = local.common_tags

