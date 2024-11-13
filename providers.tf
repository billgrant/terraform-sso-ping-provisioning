terraform {
  required_providers {
    pingone = {
      source  = "pingidentity/pingone"
      version = ">= 1.1, < 1.2"
    }
    tfe = {
      source  = "hashicorp/tfe"
      version = "~> 0.35.0"
    }
  }
}

provider "pingone" {}

provider "tfe" {}
