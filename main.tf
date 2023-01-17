data "azurerm_resource_group" "dns" {
  name = var.resource_group_name
}

locals {
  tags = merge(
    var.tags_extra,
    var.tags,
  )
}