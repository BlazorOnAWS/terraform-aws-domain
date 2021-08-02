# Basic usage example

Create a new zone named "example.co" and create DNS records for FastMail.

```
module "domain" {
  source = "../../"

  domain_name = "example.co" 
  email_host = "FASTMAIL" 

  tags = {
    Automation = "Terraform"    
  }
}
```
