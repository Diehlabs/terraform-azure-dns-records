resource "azurerm_dns_aaaa_record" "aaaa" {
  for_each = {
    for key, value in try(var.records.aaaa, {}) : key => value
  }

  name                = each.value.name
  zone_name           = var.dns_zone_name
  resource_group_name = data.azurerm_resource_group.dns.name
  ttl                 = try(each.value.ttl, 300)
  records             = try(each.value.records, null)
  tags                = var.tags
}
