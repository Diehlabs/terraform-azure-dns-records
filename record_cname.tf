resource "azurerm_dns_cname_record" "cname" {
  for_each = {
    for key, value in try(var.records.cname, {}) : key => value
    if try(value.record, null) != null
  }

  name                = each.value.name
  zone_name           = var.dns_zone_name
  resource_group_name = data.azurerm_resource_group.dns.name
  ttl                 = try(each.value.ttl, 300)
  record              = try(each.value.record, null)
  tags                = var.tags
}

resource "azurerm_dns_cname_record" "cname_dns_zone_record" {
  for_each = {
    for key, value in try(var.records.cname, {}) : key => value
    if try(value.target_resource_id, null) != null
  }

  name                = each.value.name
  zone_name           = var.dns_zone_name
  resource_group_name = data.azurerm_resource_group.dns.name
  ttl                 = try(each.value.ttl, 300)
  tags                = var.tags
  target_resource_id  = each.value.target_resource_id
}