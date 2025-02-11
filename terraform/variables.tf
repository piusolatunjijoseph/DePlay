variable "product_name" {
  default = "DePlay"
}

variable "environment" {
  default = "stage"
  type = string
}

variable "subscription_id" {
    type = string
}

variable "location" {
    type = string
}




gh attestation verify checksums.txt -R terraform-linters/tflint sha256sum --ignore-missing -c checksums.txt