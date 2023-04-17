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

provider "vault" {
  address = "https://vault.tenzin.io"
  auth_login_jwt {
    role = "actions-runner-role-cloudflare-dns"
  }
}

provider "cloudflare" {}

resource "cloudflare_record" "cname" {
  for_each = local.cname_records
  zone_id  = data.vault_generic_secret.cloudflare.data.zone_id
  type     = "CNAME"
  name     = each.key
  value    = each.value.content
  proxied  = try(each.value.proxied, true)
  ttl      = try(each.value.ttl, 1)
}

resource "cloudflare_record" "txt" {
  for_each = local.txt_records
  zone_id  = data.vault_generic_secret.cloudflare.data.zone_id
  type     = "TXT"
  name     = each.key
  value    = each.value.content
  ttl      = try(each.value.ttl, 1)
}

resource "cloudflare_record" "a" {
  for_each = local.a_records
  zone_id  = data.vault_generic_secret.cloudflare.data.zone_id
  type     = "A"
  name     = each.key
  value    = each.value.content
  proxied  = try(each.value.proxied, true)
  ttl      = try(each.value.ttl, 1)
}
