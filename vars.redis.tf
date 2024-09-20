# ---------------
# Redis variables
# ---------------
variable "redis_target_port" {
  default     = 6379
  type        = number
  description = "The redis target port"
}
variable "redis_name" {
  default     = "redisapp"
  type        = string
  description = "The name of the redis ACA container app"
}
variable "redis_image" {
  default     = "redis:latest"
  type        = string
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
variable "redis_revision_mode" {
  default     = "Single"
  description = "Revision mode of the redis container"
  type        = string
}