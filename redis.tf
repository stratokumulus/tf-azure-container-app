resource "azurerm_container_app" "redis" {
  name                         = var.redis_name
  container_app_environment_id = azurerm_container_app_environment.aca_ex.id
  resource_group_name          = azurerm_resource_group.rg_aca.name
  revision_mode                = var.redis_revision_mode
  ingress {
    #allow_insecure_connections = true
    external_enabled = false
    target_port      = var.redis_target_port
    exposed_port     = var.redis_target_port
    transport        = "tcp"
    traffic_weight {
      latest_revision = true
      percentage      = 100
    }
    # ip_security_restriction {
    #   name             = "wide-open"
    #   action           = "Allow"
    #   ip_address_range = "0.0.0.0/0"
    # }
  }

  # registry {
  #   server               = "hub.docker.com"
  #   username             = var.docker_username
  #   password_secret_name = "docker-passwd"
  # }
  # secret {
  #   name  = "docker-passwd"
  #   value = var.docker_secret
  # }
  template {
    min_replicas = 1
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
