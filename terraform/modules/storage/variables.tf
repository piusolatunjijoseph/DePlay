variable "resource_group_name" {
  description = "The name of the resource group where the storage account will be created."
  type        = string
}

variable "location" {
  description = "The location where the resources will be created."
  type        = string
}

variable "container_name" {
  description = "The name of the storage container."
  type        = string
}

variable "storage_account_tier" {
  description = "The performance tier of the storage account."
  type        = string
  default     = "Standard"
}

variable "storage_replication_type" {
  description = "The replication type of the storage account."
  type        = string
  default     = "LRS"
}

variable "min_tls_version" {
  description = "The minimum TLS version allowed for the storage account."
  type        = string
  default     = "TLS1_2"
}

variable "random_integer_max" {
  description = "The maximum value for the random integer."
  type        = number
  default     = 99999999
}

variable "random_integer_min" {
  description = "The minimum value for the random integer."
  type        = number
  default     = 10000000
}
