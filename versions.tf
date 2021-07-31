terraform {
  required_version = ">= 1.0.0"
  
  required_providers {
    aws = {
      source  = "registry.terraform.io/hashicorp/aws"
      version = ">= 3.0.0"
    }
  }
}
