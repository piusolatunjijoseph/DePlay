module "resource_group" {
  source  = "./modules/resource_group"
  name    = "app1"
  location = "East US"
}

module "storage" {
  source = "./modules/storage"
  
  resource_group_name = module.resource_group.resource_group_name
  location            = module.resource_group.location
  container_name = "fortknox-app1"
  storage_account_tier = "Standard"
  storage_replication_type = "LRS"
  min_tls_version     = "TLS1_2"
  random_integer_max  = 99999999
  random_integer_min  = 10000000
}
