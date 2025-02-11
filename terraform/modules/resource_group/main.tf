resource "azurerm_resource_group" "deplay_rg" {
  name     = var.name
  location = var.location
}