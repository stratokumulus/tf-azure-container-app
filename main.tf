resource "azurerm_resource_group" "rg_aca" {
  name     = var.rg_name
  location = var.location
}
