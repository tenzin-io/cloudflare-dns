locals {

  a_records = {
    "kube-11" = {
      proxied = false
      content = "129.213.146.175"
    }
  }

  cname_records = {
    "aws" = {
      content = "frontend.tenzin.io"
    },
    "kube-11-nginx-ingress" = {
      content = "kube-11.tenzin.io"
    },
    "vs" = {
      content = "kube-11-nginx-ingress"
    }
  }

  txt_records = {
    "_github-challenge-tenzin-io-organization" = {
      content = "3927b66417"
    },
    "_github-pages-challenge-tenzin-io" = {
      content = "9cf3e2b111d1f3c43b695d58e6faa0"
    }
  }

}
