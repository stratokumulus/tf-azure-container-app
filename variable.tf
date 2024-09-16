# ------------------------------
# Azure authentication variables
# ------------------------------
variable "tenant_id" {
  sensitive = true
}
variable "subscription_id" {
  sensitive = true
}
variable "client_id" {
  sensitive = true
}
variable "client_secret" {
  sensitive = true
}
# -------------------------
# ACA environment variables 
# -------------------------
variable "rg_name" {
  default = "rg-aca-lab-frctrl-01"
}
variable "location" {
  default = "francecentral"
}
variable "aca_env_name" {
  default = "aca-lab-env"
}
# ----------------------
# Microservice variables 
# ----------------------
variable "microservice_image" {
  default     = "stratokumulus/simple-microservice:39"
  type        = string
  description = "The name of the microservice image"
}
variable "microservice_name" {
  default     = "microservice"
  type        = string
  description = "The name of the microservice"
}
variable "microservice_target_port" {
  default     = 9876
  type        = number
  description = "The port exposed by the microservice container"
}
variable "db_hostname" {
  default     = "redis" #"redis.aca-lab-env.internal"
  type        = string
  description = "The name of the service exposed by the redis container"
}
variable "db_port" {
  default     = "6379"
  type        = string
  description = "The port of the service exposed by the redis container"
}
variable "microservice_cpu" {
  default     = 0.25
  type        = number
  description = "The CPU consumption of the microservice container"
}
variable "microservice_memory" {
  default     = "0.5Gi"
  type        = string
  description = "The memory consumption of the microservice container"
}
# ---------------
# Redis variables
# ---------------
variable "redis_target_port" {
  default     = 6379
  type        = number
  description = "The redis target port"
}
variable "redis_name" {
    default = "redis"
    type = string
    description = "The name of the redis ACA container app"
}
variable "redis_image" {
    default = "redis:latest"
    type = string
    description = "The image for the redis container"
}
variable "redis_cpu" {
  default     = 0.25
  type        = number
  description = "The CPU consumption of the microservice container"
}
variable "redis_memory" {
  default     = "0.5Gi"
  type        = string
  description = "The memory consumption of the microservice container"
}
# -------------
# ENV variables
# -------------
variable "docker_secret" {
  sensitive = true
}
variable "docker_username" {
  sensitive = true
}
variable "db_passwd" {
  sensitive = true
}
