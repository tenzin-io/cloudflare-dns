data "aws_ssm_parameter" "cloudflare_zone_id" {
  name = "/homelab/cloudflare_zone_id"
}

data "vault_generic_secret" "cloudflare" {
  path = "secret/data/cloudflare"
}
