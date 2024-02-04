terraform {
  backend "s3" {
    bucket         = "tenzin-io"
    key            = "terraform/cloudflare-dns.state"
    dynamodb_table = "tenzin-io"
    region         = "us-east-1"
  }
}

data "cloudflare_zone" "zone" {
  name = "tenzin.io"
}

resource "cloudflare_record" "record" {
  for_each = { for _, record in var.dns_records : md5(join(",", [record.type, record.name, record.content])) => record }
  zone_id  = data.cloudflare_zone.zone.id
  name     = each.value.name
  type     = each.value.type
  value    = each.value.content
  proxied  = each.value.type == "TXT" || each.value.type == "MX" ? null : each.value.proxied
  ttl      = each.value.ttl
}