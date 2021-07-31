output "zone_id" {
  value       = aws_route53_zone.this.id
  description = "The HostedZoneId that was created."
}


output "name_servers" {
  value       = aws_route53_zone.this.name_servers
  description = "The nameservers for the new zone."
}