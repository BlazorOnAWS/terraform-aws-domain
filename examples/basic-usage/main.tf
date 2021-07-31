terraform {
  required_version = ">= 1.0.2"  
}

provider "aws" {
    region  = "us-west-2" # Oregon
}

module "domain" {
  source = "../../"

  domain_name = "example.co" # Change this to a domain that you own.
  email_host = "FASTMAIL" # Optional parameter. FASTMAIL is currently the only supported email host.

  tags = {
    Automation = "Terraform"    
  }
}
