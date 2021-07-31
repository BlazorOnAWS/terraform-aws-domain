variable "domain_name" {
  description = "Name of the domain to provision"
  type        = string
}

variable "email_host" {
  description = "Name of your email host. Must be NONE or FASTMAIL"
  default = "NONE"
  validation {
    condition     = contains(["NONE", "FASTMAIL"], var.email_host)
    error_message = "Valid values for var: email_host are (NONE, FASTMAIL)."
  } 
}

variable "tags" {
  description = "Tags added to resources"
  type        = map(any)
  default     = {}
}


locals {
  use_fastmail = var.email_host == "FASTMAIL" 
}
