locals {
  prefix = "${var.product_name}"

  tags = {
    repository     = locals.prefix
    terraform managed   = true
  }

}