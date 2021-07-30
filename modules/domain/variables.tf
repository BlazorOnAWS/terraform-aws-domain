variable "domain_name" {
  description = "Name of the domain to provision"
  type        = string
}

variable "email_host" {
  description = "Name of your email host. Must be GOOGLE or FASTMAIL"
  validation {
    condition     = contains(["GOOGLE", "FASTMAIL"], var.email_host)
    error_message = "Valid values for var: email_host are (GOOGLE, FASTMAIL)."
  } 
}

variable "tags" {
  description = "Tags added to resources"
  type        = map(any)
  default     = {}
}
