resource "azurerm_dns_txt_record" "txt" {
  for_each = try(var.records.txt, {})

  name                = each.value.name
  zone_name           = var.dns_zone_name
  resource_group_name = data.azurerm_resource_group.dns.name
  ttl                 = try(each.value.ttl, 300)
  tags                = var.tags

  dynamic "record" {
    for_each = each.value.records

    content {
      value = record.value
    }
  }
}