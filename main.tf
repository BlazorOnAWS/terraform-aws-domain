resource "aws_route53_zone" "this" {
  name = var.domain_name
  tags = var.tags
}

module "domain" {
  count  = local.use_fastmail ? 1 : 0
  source = "./modules/fastmail"

  zone_id = aws_route53_zone.this.id
  domain_name = var.domain_name
}
