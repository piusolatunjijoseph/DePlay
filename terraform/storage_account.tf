resource "random_integer" "rand" {
  max = 99999999
  min = 10000000
}

resource "azurerm_storage_account" "deplay_storage" {
  name                     = "deplay${random_integer.rand.result}"
  resource_group_name      = azurerm_resource_group.deplay_rg.name
  location                 = azurerm_resource_group.deplay_rg.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
  min_tls_version = "TLS1_2"
}

resource "azurerm_storage_container" "deplay_container" {
  name                  = "fortknoxx"
  storage_account_id  = azurerm_storage_account.deplay_storage.id
  container_access_type = "private" # Options: "private", "blob", or "container"
}