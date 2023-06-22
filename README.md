# README
My Terraform configuration repository for managing my CloudFlare DNS records.

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_cloudflare"></a> [cloudflare](#requirement\_cloudflare) | ~> 3.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_cloudflare"></a> [cloudflare](#provider\_cloudflare) | 3.35.0 |
| <a name="provider_vault"></a> [vault](#provider\_vault) | 3.14.0 |

## Resources

| Name | Type |
|------|------|
| [cloudflare_record.a](https://registry.terraform.io/providers/cloudflare/cloudflare/latest/docs/resources/record) | resource |
| [cloudflare_record.cname](https://registry.terraform.io/providers/cloudflare/cloudflare/latest/docs/resources/record) | resource |
| [cloudflare_record.txt](https://registry.terraform.io/providers/cloudflare/cloudflare/latest/docs/resources/record) | resource |
| [vault_generic_secret.cloudflare](https://registry.terraform.io/providers/hashicorp/vault/latest/docs/data-sources/generic_secret) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_a_records"></a> [a\_records](#input\_a\_records) | DNS A resource records to create | <pre>map(object({<br>    proxied = bool<br>    content = string<br>  }))</pre> | n/a | yes |
| <a name="input_cname_records"></a> [cname\_records](#input\_cname\_records) | DNS CNAME resource records to create | `map(object({ content = string }))` | n/a | yes |
| <a name="input_txt_records"></a> [txt\_records](#input\_txt\_records) | DNS TXT resource records to create | `map(object({ content = string }))` | n/a | yes |
<!-- END_TF_DOCS -->
