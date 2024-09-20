resource "azurerm_container_app_environment" "aca_ex" {
  name                     = var.aca_env_name
  location                 = azurerm_resource_group.rg_aca.location
  resource_group_name      = azurerm_resource_group.rg_aca.name
  #infrastructure_subnet_id = azurerm_subnet.aca_snet.id
#   workload_profile         {
#       workload_profile_type = "Consumption"
#       name = "Consumption" # Can't be anything else if profile is consumption
#   }

}