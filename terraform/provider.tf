terraform {
  required_providers {
    github = {
      source  = "integrations/github"
      version = "~> 5.0" # Adjust version as per your requirements
    }
  }
}

provider "azurerm" {
  features {}
  subscription_id = "b9c4d03f-47e6-4875-92bf-4a77de1c09ee"
}

provider "github" {
  owner = var.github_owner
  token = var.github_token
}