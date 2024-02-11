variable "dns_records" {
  type = list(object({
    name    = string
    type    = string
    content = string
    proxied = optional(bool, true)
    ttl     = optional(number, 1)
  }))
  description = "DNS resource records to create"
  default     = null
}