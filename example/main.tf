terraform {
  required_version = ">= 1.0.2"

  backend "remote" {
    organization = "BlazorOnAWS-Terraform-Test"

    workspaces {
      name = "domain-test-1"
    }
  }
}

module "domain" {
  source = "../modules/domain"

  domain_name = "example.com.oram"
  tags = {
    Name = "tagvalue",
  }
}