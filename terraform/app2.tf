module "resource_group_app2" {
  source  = "./modules/resource_group"
  name    = "app2"
  location = "East US"
}

module "storage_app2" {
  source = "./modules/storage"

  resource_group_name = module.resource_group_app2.resource_group_name
  location            = module.resource_group_app2.location
  container_name      = "fortknoxx-app2"
  storage_account_tier = "Standard"
  storage_replication_type = "LRS"
  min_tls_version     = "TLS1_2"
  random_integer_max  = 99999999
  random_integer_min  = 10000000
}
