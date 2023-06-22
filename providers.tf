provider "aws" {
  region = "us-east-1"
}

provider "vault" {
  address = "https://vault.tenzin.io"
}

provider "cloudflare" {}
