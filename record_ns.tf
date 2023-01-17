resource "azurerm_dns_ns_record" "ns" {
  for_each = try(var.records.ns, {})

  name                = each.value.name
  zone_name           = var.dns_zone_name
  resource_group_name = data.azurerm_resource_group.dns.name
  ttl                 = try(each.value.ttl, 300)
  records             = each.value.records
  tags                = var.tags
}
