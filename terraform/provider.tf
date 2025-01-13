provider "azurerm" {
  features {}
}

│ terraform {
│   backend "local" {}
│ }

terraform {
  required_providers {
    github = {
      source  = "integrations/github"
      version = "~> 5.0" # Adjust version as per your requirements
    }
  }
}

provider "github" {
  owner = var.github_owner
  token = var.github_token
}