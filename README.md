# README
My Terraform configuration repository for managing my CloudFlare DNS records.

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_cloudflare"></a> [cloudflare](#requirement\_cloudflare) | ~> 4.0 |

## Resources

| Name | Type |
|------|------|
| [cloudflare_record.record](https://registry.terraform.io/providers/cloudflare/cloudflare/latest/docs/resources/record) | resource |
| [cloudflare_zone.zone](https://registry.terraform.io/providers/cloudflare/cloudflare/latest/docs/data-sources/zone) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_dns_records"></a> [dns\_records](#input\_dns\_records) | DNS resource records to create | <pre>list(object({<br>    name = string<br>    type    = string<br>    content = string<br>    proxied = optional(bool, true)<br>    ttl     = optional(number, 1)<br>  }))</pre> | `null` | no |
<!-- END_TF_DOCS -->
