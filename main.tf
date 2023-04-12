terraform {
  backend "s3" {
    bucket         = "tenzin-io"
    key            = "terraform/cloudflare-dns.state"
    dynamodb_table = "tenzin-io"
    region         = "us-east-1"
  }
}

provider "aws" {
  region = "us-east-1"
}

provider "cloudflare" {}

resource "cloudflare_record" "cname" {
  for_each = local.cname_records
  zone_id  = data.aws_ssm_parameter.cloudflare_zone_id.value
  type     = "CNAME"
  name     = each.key
  value    = each.value.content
  proxied  = try(each.value.proxied, true)
  ttl      = try(each.value.ttl, 1)
}

resource "cloudflare_record" "txt" {
  for_each = local.txt_records
  zone_id  = data.aws_ssm_parameter.cloudflare_zone_id.value
  type     = "TXT"
  name     = each.key
  value    = each.value.content
  ttl      = try(each.value.ttl, 1)
}
