resource "azurerm_container_app" "microservice" {
  name                         = var.microservice_name
  container_app_environment_id = azurerm_container_app_environment.aca_ex.id
  resource_group_name          = azurerm_resource_group.rg_aca.name
  revision_mode                = "Single"

  ingress {
    allow_insecure_connections = false
    external_enabled           = true
    target_port                = var.microservice_target_port
    traffic_weight {
      latest_revision = true
      percentage      = 100
    }
  }
  registry {
    server               = "hub.docker.com"
    username             = var.docker_username
    password_secret_name = "docker-passwd"
  }
  secret {
    name  = "docker-passwd"
    value = var.docker_secret
  }
  template {
    container {
      name   = var.microservice_name
      image  = var.microservice_image
      cpu    = var.microservice_cpu
      memory = var.microservice_memory

      env {
        name  = "DB_HOSTNAME"
        value = var.db_hostname
      }
      env {
        name  = "DB_PORT"
        value = var.db_port
      }
      env {
        name  = "DB_PASSWD"
        value = var.db_passwd
      }

    }
  }
}
