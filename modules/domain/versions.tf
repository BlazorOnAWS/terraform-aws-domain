terraform {
  required_version = ">= 1.0.2"

  required_providers {
    aws = {
      source  = "registry.terraform.io/hashicorp/aws"
      version = "~> 3.50"
    }
  }
}