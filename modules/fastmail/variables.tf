variable "domain_name" {
  description = "Name of the domain we will add Fastmail records to."
  type        = string
}

variable "zone_id" {
  description = "The Route53 ZoneId for our target zone."
  type        = string
}
