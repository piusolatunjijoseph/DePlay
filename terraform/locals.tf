locals {
  prefix = "${var.product_name}"

  tags = {
    repository     = local.prefix
    repository_url = "https://github.com/piusolatunjijoseph/${var.product_name}"
    terraform-managed   = true
  }

}