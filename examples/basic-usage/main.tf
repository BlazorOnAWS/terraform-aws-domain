terraform {
  required_version = ">= 1.0.2"  
}

provider "aws" {
    region  = "us-west-2" # Oregon
}

module "domain" {
  source = "../../"

  domain_name = "example.com.oram"
  email_host = "FASTMAIL"

  tags = {
    Tag1 = "tagvalue1",
    Tag2 = "tagvalue2"
  }
}
