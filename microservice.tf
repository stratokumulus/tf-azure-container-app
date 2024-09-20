locals {
 redis_target = "redisapp"
  #redis_target = "https://${var.redis_name}.${var.aca_env_name}.${var.location}.azurecontainerapps.io"
}

resource "azurerm_container_app" "microservice" {
  name                         = var.microservice_name
  container_app_environment_id = azurerm_container_app_environment.aca_ex.id
  resource_group_name          = azurerm_resource_group.rg_aca.name
  revision_mode                = var.microservice_revision_mode

  ingress {
    allow_insecure_connections = false
    external_enabled           = true
    target_port                = var.microservice_target_port
    traffic_weight {
      latest_revision = true
      percentage      = 100
    }
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
      name   = var.microservice_name
      image  = var.microservice_image #"mcr.microsoft.com/azurelinux/busybox:1.36" #
      cpu    = var.microservice_cpu
      memory = var.microservice_memory

      env {
        name  = "DB_HOSTNAME"
        value = local.redis_target
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
