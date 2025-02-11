resource "random_integer" "rand" {
  max = var.random_integer_max
  min = var.random_integer_min
}

resource "azurerm_storage_account" "deplay_storage" {
  name                     = "deplay${random_integer.rand.result}"
  resource_group_name      = var.resource_group_name
  location                 = var.location
  account_tier             = var.storage_account_tier
  account_replication_type = var.storage_replication_type
  min_tls_version          = var.min_tls_version
}

resource "azurerm_storage_container" "deplay_container" {
  name                  = var.container_name
  storage_account_id    = azurerm_storage_account.deplay_storage.id
  container_access_type = "private" # Options: \"private\", \"blob\", or \"container\"
}