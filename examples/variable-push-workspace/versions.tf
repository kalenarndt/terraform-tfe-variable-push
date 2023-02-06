terraform {
  required_version = ">=1.3.0"
  required_providers {
    tfe = {
      version = ">=0.30.0"
    }
    random = {
      source  = "hashicorp/random"
      version = ">=3.4.3"
    }
  }
}
