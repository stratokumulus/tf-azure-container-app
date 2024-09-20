# ----------------------
# Microservice variables 
# ----------------------
variable "microservice_image" {
  default     = "stratokumulus/simple-microservice:50"
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
variable "microservice_revision_mode" {
  default     = "Single"
  description = "Revision mode of the microservice container"
  type        = string
}