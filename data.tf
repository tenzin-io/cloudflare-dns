data "aws_ssm_parameter" "cloudflare_zone_id" {
  name = "/homelab/cloudflare_zone_id"
}
