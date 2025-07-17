variable "rg_name" {}
variable "rg_location" {}

resource "azurerm_resource_group" "rg-VIP1" {
  for_each = var.rg_name
  name     = each.key
  location = each.value
}



