resource "random_integer" "rand" {
  max = 99999999
  min = 10000000
}
resource "azurerm_resource_group" "deplay-rg" {
  name     = "deplay"
  location = "East US"
}

resource "azurerm_storage_account" "deplay_storage" {
  name                     = "deplay${random_integer.rand.result}"
  resource_group_name      = azurerm_resource_group.example.name
  location                 = azurerm_resource_group.example.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
  min_tls_version = "TLS1_2 "
}

resource "azurerm_storage_container" "deplay_container" {
  name                  = "example-container"
  storage_account_id  = azurerm_storage_account.deplay_storage.id
  container_access_type = "private" # Options: "private", "blob", or "container"
}