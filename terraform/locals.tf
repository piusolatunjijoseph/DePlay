locals {
  prefix = "${var.product_name}"

  tags = {
    repository     = locals.prefix
    repository_url = "https://github.com/piusolatunjijoseph/${var.product_name}"
    terraform-managed   = true
  }

}