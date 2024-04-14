dns_records = [
  {
    name    = "kube-11"
    type    = "A"
    proxied = false
    content = "129.213.146.175"
    ttl     = 300
  },
  {
    name    = "kube-11-nginx-ingress"
    type    = "CNAME"
    content = "kube-11.tenzin.io"
  },
  {
    name    = "aws"
    type    = "CNAME"
    content = "kube-11-nginx-ingress.tenzin.io"
  },
  {
    name    = "github"
    type    = "CNAME"
    content = "kube-11-nginx-ingress.tenzin.io"
  },
  {
    name    = "vault"
    type    = "CNAME"
    content = "kube-11-nginx-ingress.tenzin.io"
  },
  {
    name    = "atlassian-3cf567._domainkey.tenzin.io"
    type    = "CNAME"
    content = "atlassian-3cf567.dkim.atlassian.net."
    proxied = false
    ttl     = 300
  },
  {
    name    = "atlassian-65ae54._domainkey.tenzin.io"
    type    = "CNAME"
    content = "atlassian-65ae54.dkim.atlassian.net."
    proxied = false
    ttl     = 300
  },
  {
    name    = "atlassian-bounces.tenzin.io"
    type    = "CNAME"
    content = "bounces.mail-us.atlassian.net."
    proxied = false
    ttl     = 300
  },
  {
    name    = "_github-challenge-tenzin-io-organization"
    type    = "TXT"
    content = "3927b66417"
    ttl     = 300
  },
  {
    name    = "_github-pages-challenge-tenzin-io"
    type    = "TXT"
    content = "9cf3e2b111d1f3c43b695d58e6faa0"
    ttl     = 300
  },
  {
    name    = "tenzin.io"
    type    = "TXT"
    content = "atlassian-domain-verification=ReKaTONuklO9g4KCtKWJrNRXCSAjOJgt4ryuPZZDaRAsQSjlmZXjdsZW/6IVBfiy"
    ttl     = 300
  },
  {
    name    = "tenzin.io"
    type    = "TXT"
    content = "atlassian-sending-domain-verification=2ebec421-ae7f-4079-bc4a-26c94f1d0fcd"
    ttl     = 300
  },
  {
    name    = "tenzin.io"
    type    = "TXT"
    content = "google-site-verification=bqLGKXx-iU_hxDRQsCcl5nPXokEeXNfhgrlYPQUYT6I"
    ttl     = 300
  }
]
