resource "azurerm_dns_a_record" "a" {
  for_each = {
    for key, value in try(var.records.a, {}) : key => value
    if try(value.records, null) != null
  }

  name                = each.value.name
  zone_name           = var.dns_zone_name
  resource_group_name = data.azurerm_resource_group.dns.name
  ttl                 = try(each.value.ttl, 300)
  records             = each.value.records
  tags                = var.tags
}

resource "azurerm_dns_a_record" "a_dns_zone_record" {
  for_each = {
    for key, value in try(var.records.a, {}) : key => value
    if try(value.target_resource_id, null) != null
  }

  name                = each.value.name
  zone_name           = var.dns_zone_name
  resource_group_name = data.azurerm_resource_group.dns.name
  ttl                 = try(each.value.ttl, 300)
  tags                = var.tags
  target_resource_id  = each.value.target_resource_id
}

# resource "azurerm_dns_a_record" "a_public_ip_address" {
#   for_each = {
#     for key, value in try(var.records.a, {}) : key => value
#     if try(value.resource_id.public_ip_address, null) != null
#   }

#   name                = each.value.name
#   zone_name           = var.dns_zone_name
#   resource_group_name =  resource_group_name = data.azurerm_resource_group.dns.name
#   ttl                 = try(each.value.ttl, 300)
#   tags                = var.tags
#   target_resource_id  = var.resource_ids.public_ip_addresses[try(each.value.resource_id.public_ip_address.lz_key, var.client_config.landingzone_key)][each.value.resource_id.public_ip_address.key].id
# }
