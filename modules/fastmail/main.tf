resource "aws_route53_record" "dkim_1" {
  zone_id = var.zone_id
  name    = "fm1._domainkey.${var.domain_name}"
  type    = "CNAME"
  ttl     = 3600
  records = ["fm1.${var.domain_name}.dkim.fmhosted.com"]  
}

resource "aws_route53_record" "dkim_2" {
  zone_id = var.zone_id
  name    = "fm2._domainkey.${var.domain_name}"
  type    = "CNAME"
  ttl     = 3600
  records = ["fm2.${var.domain_name}.dkim.fmhosted.com"]  
}

resource "aws_route53_record" "dkim_3" {
  zone_id = var.zone_id
  name    = "fm3._domainkey.${var.domain_name}"
  type    = "CNAME"
  ttl     = 3600
  records = ["fm3.${var.domain_name}.dkim.fmhosted.com"]  
}

resource "aws_route53_record" "mx" {
  zone_id = var.zone_id
  name    = var.domain_name
  type    = "MX"
  ttl     = 3600
  records = [
    "10 in1-smtp.messagingengine.com",
    "20 in2-smtp.messagingengine.com"]  
}

resource "aws_route53_record" "mx_subdoamins" {
  zone_id = var.zone_id
  name    = "*.${var.domain_name}"
  type    = "MX"
  ttl     = 3600
  records = [
    "10 in1-smtp.messagingengine.com",
    "20 in2-smtp.messagingengine.com"
  ]  
}

resource "aws_route53_record" "webmail" {
  zone_id = var.zone_id
  name    = "mail.${var.domain_name}"
  type    = "A"
  ttl     = 3600
  records = [
    "66.111.4.147",
    "66.111.4.148"
  ]  
}

resource "aws_route53_record" "spf" {
  zone_id = var.zone_id
  name    = var.domain_name
  type    = "TXT"
  ttl     = 3600
  records = [
    "v=spf1 include:spf.messagingengine.com ?all"
  ]  
}

resource "aws_route53_record" "client_email_discovery_1" {
  zone_id = var.zone_id
  name    = "_submission._tcp.${var.domain_name}"
  type    = "SRV"
  ttl     = 3600
  records = [
    "0 1 587 smtp.fastmail.com"
  ]  
}
  
resource "aws_route53_record" "client_email_discovery_2" {
  zone_id = var.zone_id
  name    = "_imap._tcp.${var.domain_name}"
  type    = "SRV"
  ttl     = 3600
  records = [
    "0 0 0 ."
  ]  
}

resource "aws_route53_record" "client_email_discovery_3" {
  zone_id = var.zone_id
  name    = "_imaps._tcp.${var.domain_name}"
  type    = "SRV"
  ttl     = 3600
  records = [
    "0 1 993 imap.fastmail.com"
  ]  
}

resource "aws_route53_record" "client_email_discovery_4" {
  zone_id = var.zone_id
  name    = "_pop3._tcp.${var.domain_name}"
  type    = "SRV"
  ttl     = 3600
  records = [
    "0 0 0 ."
  ]  
}

resource "aws_route53_record" "client_email_discovery_5" {
  zone_id = var.zone_id
  name    = "_pop3s._tcp.${var.domain_name}"
  type    = "SRV"
  ttl     = 3600
  records = [
    "10 1 995 pop.fastmail.com"
  ]  
}

resource "aws_route53_record" "client_email_discovery_6" {
  zone_id = var.zone_id
  name    = "_jmap._tcp.${var.domain_name}"
  type    = "SRV"
  ttl     = 3600
  records = [
    "0 1 443 jmap.fastmail.com"
  ]  
}

resource "aws_route53_record" "card_dav_discovery_1" {
  zone_id = var.zone_id
  name    = "_carddav._tcp.${var.domain_name}"
  type    = "SRV"
  ttl     = 3600
  records = [
    "0 0 0 ."
  ]  
}

resource "aws_route53_record" "card_dav_discovery_2" {
  zone_id = var.zone_id
  name    = "_carddavs._tcp.${var.domain_name}"
  type    = "SRV"
  ttl     = 3600
  records = [
    "0 1 443 carddav.fastmail.com"
  ]  
}

resource "aws_route53_record" "cal_dav_discovery_1" {
  zone_id = var.zone_id
  name    = "_caldav._tcp.${var.domain_name}"
  type    = "SRV"
  ttl     = 3600
  records = [
    "0 0 0 ."
  ]  
}

resource "aws_route53_record" "cal_dav_discovery_2" {
  zone_id = var.zone_id
  name    = "_caldavs._tcp.${var.domain_name}"
  type    = "SRV"
  ttl     = 3600
  records = [
    "0 1 443 caldav.fastmail.com"
  ]  
}
