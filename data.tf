data "aws_ssm_parameter" "cloudflare_api_key" {
  name = "/homelab/cloudflare_api_key"
}

data "aws_ssm_parameter" "cloudflare_api_email" {
  name = "/homelab/cloudflare_api_email"
}

data "aws_ssm_parameter" "cloudflare_zone_id" {
  name = "/homelab/cloudflare_zone_id"
}
