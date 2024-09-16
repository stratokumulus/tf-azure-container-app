resource "azurerm_container_app" "redis" {
  name                         = var.redis_name
  container_app_environment_id = azurerm_container_app_environment.aca_ex.id
  resource_group_name          = azurerm_resource_group.rg_aca.name
  revision_mode                = "Single"
  ingress {
    allow_insecure_connections = false
    external_enabled           = false
    target_port                = var.redis_target_port
    traffic_weight {
      latest_revision = true
      percentage      = 100
    }
  }
  template {
    container {
      name   = var.redis_name
      image  = var.redis_image
      cpu    = var.redis_cpu
      memory = var.redis_memory

      env {
        name  = "DB_PASSWD"
        value = var.db_passwd
      }
    }
  }
}
