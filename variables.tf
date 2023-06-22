variable "a_records" {
  type = map(object({
    proxied = bool
    content = string
  }))
  description = "DNS A resource records to create"
  default = {}
}

variable "cname_records" {
  type        = map(object({ content = string }))
  description = "DNS CNAME resource records to create"
  default = {}
}

variable "txt_records" {
  type = map(object({ content = string }))
  description = "DNS TXT resource records to create"
  default = {}
}
