resource "azurerm_dns_srv_record" "srv" {
  for_each = try(var.records.srv, {})

  name                = each.value.name
  zone_name           = var.dns_zone_name
  resource_group_name = data.azurerm_resource_group.dns.name
  ttl                 = try(each.value.ttl, 300)
  tags                = var.tags

  dynamic "record" {
    for_each = each.value.records

    content {
      priority = record.value.priority
      weight   = record.value.weight
      port     = record.value.port
      target   = record.value.target
    }
  }
}