variable "cloudflare_api_token" {
  sensitive   = true
  type        = string
  description = "The API token for DNS operations."
}

variable "cloudflare_zone_id" {
  sensitive   = true
  type        = string
  description = "The zone identifier for the DNS zone."
}
