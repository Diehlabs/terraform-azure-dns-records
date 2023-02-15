# terraform-azure-dns-records
* Manages all types of DNS records
* Base code lifted from the CAF super-module

<!-- BEGIN_TF_DOCS -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azurerm_dns_a_record.a](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/dns_a_record) | resource |
| [azurerm_dns_a_record.a_dns_zone_record](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/dns_a_record) | resource |
| [azurerm_dns_aaaa_record.aaaa](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/dns_aaaa_record) | resource |
| [azurerm_dns_caa_record.caa](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/dns_caa_record) | resource |
| [azurerm_dns_cname_record.cname](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/dns_cname_record) | resource |
| [azurerm_dns_cname_record.cname_dns_zone_record](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/dns_cname_record) | resource |
| [azurerm_dns_mx_record.mx](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/dns_mx_record) | resource |
| [azurerm_dns_ns_record.ns](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/dns_ns_record) | resource |
| [azurerm_dns_ptr_record.ptr](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/dns_ptr_record) | resource |
| [azurerm_dns_srv_record.srv](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/dns_srv_record) | resource |
| [azurerm_dns_txt_record.txt](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/dns_txt_record) | resource |
| [azurerm_resource_group.dns](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/resource_group) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_dns_zone_name"></a> [dns\_zone\_name](#input\_dns\_zone\_name) | The zone name to create. I.e. dev for dev.verituityplatform.com | `string` | n/a | yes |
| <a name="input_records"></a> [records](#input\_records) | Map of all DNS records to create for var.dns\_zone\_name | `any` | n/a | yes |
| <a name="input_resource_group_name"></a> [resource\_group\_name](#input\_resource\_group\_name) | The resource group name to the DNS records. | `string` | `null` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | Standard tags to apply to resources | `map` | `{}` | no |
| <a name="input_tags_extra"></a> [tags\_extra](#input\_tags\_extra) | Extra tags to apply to resources | `any` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_a"></a> [a](#output\_a) | n/a |
| <a name="output_caa"></a> [caa](#output\_caa) | n/a |
| <a name="output_cname"></a> [cname](#output\_cname) | n/a |
| <a name="output_mx"></a> [mx](#output\_mx) | n/a |
| <a name="output_ns"></a> [ns](#output\_ns) | n/a |
| <a name="output_ptr"></a> [ptr](#output\_ptr) | n/a |
| <a name="output_srv"></a> [srv](#output\_srv) | n/a |
| <a name="output_txt"></a> [txt](#output\_txt) | n/a |
<!-- END_TF_DOCS -->
