terraform {
  required_providers {
    vcfa = {
      source  = "vmware/vcfa"
      version = "~> 1.0.0"
    }
    vra = {
      source  = "vmware/vra"
      version = ">= 0.17.0"
    }
  }
}

provider "vra" {
  url           = var.vcfa_url
  insecure      = true
  refresh_token = var.vra_refresh_token
  organization  = "lab"
}

provider "vcfa" {
  auth_type            = "integrated"
  user                 = var.vcfa_username
  password             = var.vcfa_password
  org                  = "System"
  url                  = var.vcfa_url
  allow_unverified_ssl = true
}