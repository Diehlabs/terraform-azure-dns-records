variable "resource_group_name" {
  type        = string
  description = "The resource group name to the DNS records."
  default     = null
}

variable "dns_zone_name" {
  type        = string
  description = "The zone name to create. I.e. dev for dev.verituityplatform.com"
}

variable "tags" {
  type        = map(string)
  description = "Standard tags to apply to resources"
  default     = {}
}

variable "tags_extra" {
  type        = map(string)
  description = "Extra tags to apply to resources"
  default     = {}
}

variable "records" {
  type        = any
  description = "Map of all DNS records to create for var.dns_zone_name"
}
