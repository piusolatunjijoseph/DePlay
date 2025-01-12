provider "azurerm" {
  features {}
}

provider "github" {
  owner = var.github_owner
  token = var.github_token
}