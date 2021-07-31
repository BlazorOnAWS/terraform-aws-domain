# Terraform AWS Domain from BlazorOnAWS

Terraform module to create a Route53 Zone and optionally create DNS records for enabling the Fastmail email service.

## Usage

module "domain" {
  source = "github.com/BlazorOnAWS/terraform-aws-domain"

  domain_name = "example.com"
  email_host = "FASTMAIL"

  tags = {
    Automation = "Terraform"    
  }
}
